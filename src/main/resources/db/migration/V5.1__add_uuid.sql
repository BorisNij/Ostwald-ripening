CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Add a UUID column to the existing students table
ALTER TABLE students
ADD COLUMN guid UUID DEFAULT uuid_generate_v4() NOT NULL,
-- Add a unique constraint to the new UUID column
ADD CONSTRAINT unique_student_guid UNIQUE (guid);

-- Add a UUID column to the existing courses table
ALTER TABLE courses
ADD COLUMN guid UUID DEFAULT uuid_generate_v4() NOT NULL,
-- Add a unique constraint to the new UUID column
ADD CONSTRAINT unique_course_guid UNIQUE (guid);

-- Add a UUID column to the existing groups table
ALTER TABLE groups
ADD COLUMN guid UUID DEFAULT uuid_generate_v4() NOT NULL,
-- Add a unique constraint to the new UUID column
ADD CONSTRAINT unique_groups_guid UNIQUE (guid);

-- Add a UUID column to the existing schedules table
ALTER TABLE schedules
ADD COLUMN guid UUID DEFAULT uuid_generate_v4() NOT NULL,
-- Add a unique constraint to the new UUID column
ADD CONSTRAINT unique_shcedule_guid UNIQUE (guid);

-- Add a UUID column to the existing professors table
ALTER TABLE professors
ADD COLUMN guid UUID DEFAULT uuid_generate_v4() NOT NULL,
-- Add a unique constraint to the new UUID column
ADD CONSTRAINT unique_professor_guid UNIQUE (guid);