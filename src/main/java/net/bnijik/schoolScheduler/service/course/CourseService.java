package net.bnijik.schoolScheduler.service.course;

import net.bnijik.schoolScheduler.dto.course.CourseDto;
import net.bnijik.schoolScheduler.dto.course.CourseUpsertDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.data.domain.PageRequest;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;
import java.util.UUID;

@Transactional(readOnly = true)
public interface CourseService extends SchoolAdminService<CourseDto> {

    Set<CourseDto> findAllMainInstructorCoursesForProfessor(long professorId);

    @Transactional
    CourseDto update(UUID courseGuid, CourseUpsertDto courseUpdateDto);

    @Transactional
    CourseDto create(CourseUpsertDto courseCreateDto);

    Set<CourseDto> findAllForStudent(long l, PageRequest of);
}
