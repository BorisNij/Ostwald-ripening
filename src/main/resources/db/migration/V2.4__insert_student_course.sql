insert into student_course (student_id, course_id)
    values ((
            select
                student_id
            from
                students
            where
                first_name = 'Elizabeth'
                and last_name = 'Turner'),
            (
                select
                    course_id
                from
                    courses
                where
                    course_name = 'Biology')),
        ((
            select
                student_id
            from students
            where
                first_name = 'Ashley'
                and last_name = 'Wilson'), (
            select
                course_id
            from courses
        where
            course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Harris'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Johnson'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Emily'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Adams'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Computer Science')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'William'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Turner'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Taylor'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'James'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Mary'
        and last_name = 'Wilson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sophia'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jennifer'
        and last_name = 'Davis'), (
    select
        course_id
    from courses
where
    course_name = 'Physics')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Elizabeth'
        and last_name = 'White'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Robert'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Anderson'), (
    select
        course_id
    from courses
where
    course_name = 'Music')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Jessica'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Jones'), (
    select
        course_id
    from courses
where
    course_name = 'Art')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Sarah'
        and last_name = 'Martinez'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Daniel'
        and last_name = 'Young'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Olivia'
        and last_name = 'Smith'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'David'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Garcia'), (
    select
        course_id
    from courses
where
    course_name = 'Biology')),
    ((
        select
            student_id
        from students
    where
        first_name = 'John'
        and last_name = 'Miller'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Samantha'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Geography')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Christopher'
        and last_name = 'Jackson'), (
    select
        course_id
    from courses
where
    course_name = 'Math')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Michael'
        and last_name = 'Clark'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Ashley'
        and last_name = 'Brown'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'History')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Benjamin'
        and last_name = 'Hall'), (
    select
        course_id
    from courses
where
    course_name = 'Literature')),
    ((
        select
            student_id
        from students
    where
        first_name = 'Joseph'
        and last_name = 'Lewis'), (
    select
        course_id
    from courses
where
    course_name = 'Chemistry'));
