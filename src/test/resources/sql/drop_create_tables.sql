DROP TABLE IF EXISTS groups, courses, students, student_course CASCADE;

CREATE TABLE groups (
    group_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_name varchar(255) NOT NULL,
    guid UUID NOT NULL,
    CONSTRAINT unique_group_name UNIQUE (group_name),
    CONSTRAINT unique_groups_guid UNIQUE (guid)
);

CREATE TABLE students (
    student_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_id int,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    guid UUID NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups (group_id) ON DELETE SET NULL,
    CONSTRAINT unique_student_guid UNIQUE (guid)
);

CREATE TABLE courses (
    course_id serial PRIMARY KEY,
    course_name varchar(255) NOT NULL,
    course_description text,
    guid UUID NOT NULL,
    CONSTRAINT unique_course_name UNIQUE (course_name),
    CONSTRAINT unique_course_guid UNIQUE (guid)
);

CREATE TABLE student_course (
    id serial PRIMARY KEY,
    student_id int,
    course_id int,
    FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE,
    CONSTRAINT unique_student_course UNIQUE (student_id, course_id)
);

DROP TABLE IF EXISTS schedules, professors, professor_course, main_instructors CASCADE;

CREATE EXTENSION IF NOT EXISTS btree_gist;

CREATE TABLE schedules (
    schedule_id serial PRIMARY KEY,
    room varchar(255) NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    guid UUID NOT NULL,
    EXCLUDE USING GIST (room WITH =, tstzrange(start_time, end_time) WITH &&),
    CONSTRAINT unique_shcedule_guid UNIQUE (guid)
);

ALTER TABLE courses
    ADD COLUMN schedule_id int,
    ADD CONSTRAINT fk_schedule_id FOREIGN KEY (schedule_id) REFERENCES schedules (schedule_id) ON DELETE SET NULL;

CREATE TABLE professors (
    professor_id serial PRIMARY KEY,
    guid UUID NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    CONSTRAINT unique_professor_guid UNIQUE (guid)
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