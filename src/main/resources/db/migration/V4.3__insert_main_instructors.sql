-- Assigning main instructors for courses
INSERT INTO main_instructors (course_id, professor_id) VALUES
    (1, 1),   -- Math by Professor 1 John Fox
    (2, 2),   -- Biology by Professor 2 John Lee
    (3, 1),   -- History by Professor 1 John Fox
    (4, 2),   -- Physics by Professor 2 John Lee
    (5, 5),   -- Chemistry by Professor 5 Alex Lee
    (7, 3),   -- Art by Professor 3 John Ray
    (8, 4),   -- Literature by Professor 4 Alex Fox
    (9, 9)   -- Music by Professor 9 Liz Ray
ON CONFLICT (course_id)
DO UPDATE SET professor_id = EXCLUDED.professor_id;