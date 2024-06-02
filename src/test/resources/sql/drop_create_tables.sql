drop table IF EXISTS GROUPS, courses, students, student_course;

create TABLE GROUPS (
    group_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_name varchar(255) NOT NULL,
    CONSTRAINT unique_group_name UNIQUE (group_name)
);

create TABLE students (
    student_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_id int,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    FOREIGN KEY (group_id) REFERENCES GROUPS (group_id) ON delete SET NULL
);

create TABLE courses (
    course_id serial PRIMARY KEY,
    course_name varchar(255) NOT NULL,
    course_description text,
    CONSTRAINT unique_course_name UNIQUE (course_name)
);

create TABLE student_course (
    id serial PRIMARY KEY,
    student_id int,
    course_id int,
    FOREIGN KEY (student_id) REFERENCES students (student_id) ON delete CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses (course_id) ON delete CASCADE,
    CONSTRAINT unique_student_course UNIQUE (student_id, course_id)
);