INSERT INTO courses (course_name, course_description)
    VALUES ('Course1', 'Description1'),
    ('Course2', 'Description2'),
    ('Course to delete', 'Description');

INSERT INTO groups (group_name)
    VALUES ('BB-22'),
    ('CC-33'),
    ('Group to Delete');

INSERT INTO students (group_id, first_name, last_name)
    VALUES ((
            SELECT
                group_id
            FROM
                groups
            WHERE
                group_name = 'BB-22'), 'Jane', 'Doe'), ((
        SELECT
            group_id
        FROM groups
        WHERE
            group_name = 'CC-33'), 'Student', 'ToRemove'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CC-33'), 'Student2', 'McStudent2');

INSERT INTO student_course (student_id, course_id)
    VALUES ((
            SELECT
                student_id
            FROM
                students
            WHERE
                first_name = 'Jane'
                AND last_name = 'Doe'),
            (
                SELECT
                    course_id
                FROM
                    courses
                WHERE
                    course_name = 'Course1')),
        ((
            SELECT
                student_id
            FROM students
            WHERE
                first_name = 'Jane'
                AND last_name = 'Doe'), (
            SELECT
                course_id
            FROM courses
        WHERE
            course_name = 'Course2')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Student'
        AND last_name = 'ToRemove'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Course2'));