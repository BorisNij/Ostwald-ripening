package net.bnijik.schoolScheduler.service.course;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;

import java.util.Set;

public interface CourseService extends SchoolAdminService<CourseDto> {

    Set<CourseDto> findAllMainInstructorCoursesForProfessor(long professorId);
}
