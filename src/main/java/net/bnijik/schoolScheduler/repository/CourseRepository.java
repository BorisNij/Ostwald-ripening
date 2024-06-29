package net.bnijik.schoolScheduler.repository;

import jakarta.transaction.Transactional;
import net.bnijik.schoolScheduler.entity.Course;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public interface CourseRepository extends SchoolRepository<Course> {
    Set<Course> findAllByMainInstructorProfessorId(long professorId);
    Slice<Course> findAllByStudentsStudentId(long studentId, Pageable pageable);

    Slice<Course> findAllByCourseIdIn(List<Long> courseIds, Pageable pageable);

    @Transactional
    @Query("SELECT c FROM Course c LEFT JOIN FETCH c.students WHERE c.courseId = :courseId")
    Optional<Course> findByIdWithStudents(long courseId);
}
