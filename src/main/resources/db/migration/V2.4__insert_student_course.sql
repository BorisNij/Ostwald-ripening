INSERT INTO student_course (student_id, course_id)
    VALUES ((
            SELECT
                student_id
            FROM
                students
            WHERE
                first_name = 'Elizabeth'
                AND last_name = 'Turner'),
            (
                SELECT
                    course_id
                FROM
                    courses
                WHERE
                    course_name = 'Biology')),
        ((
            SELECT
                student_id
            FROM students
            WHERE
                first_name = 'Ashley'
                AND last_name = 'Wilson'), (
            SELECT
                course_id
            FROM courses
        WHERE
            course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Harris'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Johnson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Emily'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Adams'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Computer Science')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'William'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Turner'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Taylor'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'James'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Mary'
        AND last_name = 'Wilson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sophia'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jennifer'
        AND last_name = 'Davis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Physics')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Elizabeth'
        AND last_name = 'White'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Robert'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Anderson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Music')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Jessica'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Jones'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Art')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Sarah'
        AND last_name = 'Martinez'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Daniel'
        AND last_name = 'Young'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Olivia'
        AND last_name = 'Smith'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'David'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Garcia'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Biology')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'John'
        AND last_name = 'Miller'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Samantha'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Geography')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Christopher'
        AND last_name = 'Jackson'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Math')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Michael'
        AND last_name = 'Clark'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Ashley'
        AND last_name = 'Brown'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'History')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Benjamin'
        AND last_name = 'Hall'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Literature')),
    ((
        SELECT
            student_id
        FROM students
    WHERE
        first_name = 'Joseph'
        AND last_name = 'Lewis'), (
    SELECT
        course_id
    FROM courses
WHERE
    course_name = 'Chemistry'));