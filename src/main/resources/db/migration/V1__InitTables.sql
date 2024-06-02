DROP TABLE IF EXISTS students, GROUPS, courses, student_course CASCADE;

CREATE TABLE GROUPS (
    group_id serial PRIMARY KEY,
    group_name varchar(255) NOT NULL,
    CONSTRAINT unique_group_name UNIQUE (group_name)
);

CREATE TABLE students (
    student_id serial PRIMARY KEY,
    group_id int,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    FOREIGN KEY (group_id) REFERENCES GROUPS (group_id) ON DELETE SET NULL
);

CREATE TABLE courses (
    course_id serial PRIMARY KEY,
    course_name varchar(255) NOT NULL,
    course_description text,
    CONSTRAINT unique_course_name UNIQUE (course_name)
);

CREATE TABLE student_course (
    id serial PRIMARY KEY,
    student_id int,
    course_id int,
    FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE,
    CONSTRAINT unique_student_course UNIQUE (student_id, course_id)
);