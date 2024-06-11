# University Scheduler REST API

## Overview

The University Scheduler REST API is designed to manage course scheduling, registration, and timetables for a
university. The system supports creating, modifying, and deleting courses, registering students and professors, and
generating timetables.

## Features

- **Course Management**: Create, modify, and delete courses.
- **Registration**: Register students and professors to the system.
- **Course Enrollment**: Enroll students in courses and associate professors with courses.
- **Timetable Generation**: Generate and retrieve timetables for students and professors by day or month.
- **Search Functionality**: Search for courses, students, and professors.

## Technologies

TBA

## Installation

TBA

## Usage

- Access the application at `http://localhost:8080`.
- Use the REST API endpoints to manage courses, students, professors, and timetables.

## API Endpoints

Swagger documentation: TBA

- **Courses**:
    - `GET /api/courses`: List all courses.
    - `POST /api/courses`: Create a new course.
    - `PUT /api/courses/{id}`: Update an existing course.
    - `DELETE /api/courses/{id}`: Delete a course.

- **Students**:
    - `GET /api/students`: List all students.
    - `POST /api/students`: Register a new student.
    - `PUT /api/students/{id}`: Update student details.
    - `DELETE /api/students/{id}`: Remove a student.

- **Professors**:
    - `GET /api/professors`: List all professors.
    - `POST /api/professors`: Register a new professor.
    - `PUT /api/professors/{id}`: Update professor details.
    - `DELETE /api/professors/{id}`: Remove a professor.

- **Timetables**:
    - `GET /api/timetables/student/{studentId}/day/{dayOfWeek}`: Get student timetable for a specific day.
    - `GET /api/timetables/student/{studentId}/month/{month}`: Get student timetable for a specific month.
    - `GET /api/timetables/professor/{professorId}/day/{dayOfWeek}`: Get professor timetable for a specific day.
    - `GET /api/timetables/professor/{professorId}/month/{month}`: Get professor timetable for a specific month.
