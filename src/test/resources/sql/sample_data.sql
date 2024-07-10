INSERT INTO courses (course_name, course_description, guid)
    VALUES ('Course1', 'Description1', '5d95d982-0576-4db4-92ab-bdff2e6db9f0'),
    ('Course2', 'Description2', '30344369-6277-4923-9274-68358441f461'),
    ('Course to delete', 'Description', '031c1fc5-3dd9-49f6-b46f-fce9db1684ac');

INSERT INTO groups (group_name, guid)
    VALUES ('BB-22', '6080581c-55d7-42eb-bd75-04210de0d6b3'),
    ('CC-33', '28e8f392-7c1c-4f9e-9c5b-a885db9132db'),
    ('Group to Delete', 'ff15e2a1-d6f1-4f89-b9e3-a4ec6a4cadfc');

INSERT INTO students (group_id, first_name, last_name, guid)
    VALUES ((
            SELECT
                group_id
            FROM
                groups
            WHERE
                group_name = 'BB-22'), 'Jane', 'Doe', '1ec9652d-a39b-42a3-af5f-9a622ad23574'), ((
        SELECT
            group_id
        FROM groups
        WHERE
            group_name = 'CC-33'), 'Student', 'ToRemove', 'ed686bcd-0b41-4888-b802-b259c6f66198'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CC-33'), 'Student2', 'McStudent2', '38ac6a24-d493-4876-a5f9-170590639c4a');

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