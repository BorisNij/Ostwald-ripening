package net.bnijik.schoolScheduler.service.student;

import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.student.StudentDto;
import net.bnijik.schoolScheduler.dto.student.StudentUpsertDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Transactional(readOnly = true)
public interface StudentService extends SchoolAdminService<StudentDto> {

    PagedDto<StudentDto> findAllByCourseName(String courseName, int pageNum, int pageSize, String sortBy, boolean isAsc);

    @Transactional
    boolean enrollInCourses(long studentId, List<Long> courseIds);

    @Transactional
    boolean withdrawFromCourse(long studentId, long courseId);

    @Transactional
    StudentDto create(String firstName, String lastName, long groupId);

    @Transactional
    StudentDto update(UUID studentGuid, StudentUpsertDto studentUpdateDto);

    @Transactional
    StudentDto create(StudentUpsertDto studentCreateDto);
}
