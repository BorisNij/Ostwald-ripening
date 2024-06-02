DROP TABLE IF EXISTS schedules, professors CASCADE;

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