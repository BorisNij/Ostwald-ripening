TRUNCATE TABLE
    students,
    groups,
    courses,
    student_course,
    schedules,
    professors,
    professor_course,
    main_instructors;

SELECT
    setval('courses_course_id_seq', 1, FALSE);

SELECT
    setval('groups_group_id_seq', 1, FALSE);

SELECT
    setval('students_student_id_seq', 1, FALSE);

SELECT
    setval('schedules_schedule_id_seq', 1, FALSE);

SELECT
    setval('professors_professor_id_seq', 1, FALSE);