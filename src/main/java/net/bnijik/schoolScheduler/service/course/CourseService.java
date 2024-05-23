package net.bnijik.schoolScheduler.service.course;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;

public interface CourseService extends SchoolAdminService<CourseDto> {

    Slice<CourseDto> findAllForStudent(long studentId, Pageable page);
}
