DROP TABLE IF EXISTS schedules, professors, main_instructors CASCADE;

CREATE EXTENSION IF NOT EXISTS btree_gist;

CREATE TABLE schedules (
    schedule_id serial PRIMARY KEY,
    room varchar(255) NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    EXCLUDE USING GIST (room WITH =, tstzrange(start_time, end_time) WITH &&)
);

ALTER TABLE courses
    ADD COLUMN schedule_id int,
    ADD CONSTRAINT fk_schedule_id FOREIGN KEY (schedule_id) REFERENCES schedules (schedule_id) ON DELETE SET NULL;

CREATE TABLE professors (
    professor_id serial PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL
);

CREATE TABLE professor_course (
    id serial PRIMARY KEY,
    professor_id int REFERENCES professors (professor_id) ON DELETE CASCADE,
    course_id int REFERENCES courses (course_id) ON DELETE CASCADE,
    CONSTRAINT unique_professor_course UNIQUE (professor_id, course_id)
);

CREATE TABLE main_instructors (
    course_id serial PRIMARY KEY REFERENCES courses(course_id) ON DELETE CASCADE,
    professor_id int REFERENCES professors(professor_id) ON DELETE SET NULL
);

-- Create a function to update main instructor based on professor teaching alone
CREATE OR REPLACE FUNCTION update_main_instructor()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM main_instructors WHERE course_id = NEW.course_id; -- Remove existing main instructor for the course
    INSERT INTO main_instructors (course_id, professor_id)
    SELECT NEW.course_id, NEW.professor_id
    WHERE EXISTS (
        SELECT 1 FROM professor_course pc
        WHERE pc.course_id = NEW.course_id
        GROUP BY pc.course_id
        HAVING count(*) = 1
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to update main instructor on professor_course changes
CREATE TRIGGER main_instructor_update
AFTER INSERT OR UPDATE ON professor_course
FOR EACH ROW EXECUTE FUNCTION update_main_instructor();
