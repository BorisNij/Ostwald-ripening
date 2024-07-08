
ALTER TABLE courses
    DROP CONSTRAINT fk_schedule_id,
    DROP COLUMN schedule_id;

ALTER TABLE schedules
    ADD COLUMN course_id int,
    ADD CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE SET NULL;