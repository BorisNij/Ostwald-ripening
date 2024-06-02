truncate table
    students,
    GROUPS,
    courses,
    student_course;

select
    setval('courses_course_id_seq', 1, FALSE);

SELECT
    setval('groups_group_id_seq', 1, FALSE);

SELECT
    setval('students_student_id_seq', 1, FALSE);