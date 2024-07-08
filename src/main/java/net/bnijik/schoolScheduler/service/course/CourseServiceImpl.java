package net.bnijik.schoolScheduler.service.course;

import net.bnijik.schoolScheduler.dto.course.CourseDto;
import net.bnijik.schoolScheduler.dto.course.CourseUpsertDto;
import net.bnijik.schoolScheduler.entity.Course;
import net.bnijik.schoolScheduler.mapper.CourseMapper;
import net.bnijik.schoolScheduler.repository.CourseRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.Set;
import java.util.UUID;

@Service
public class CourseServiceImpl extends SchoolAdminServiceImpl<CourseDto, Course> implements CourseService {

    private final CourseRepository courseRepository;
    private final CourseMapper courseMapper;

    @Autowired
    public CourseServiceImpl(CourseRepository courseRepository, CourseMapper courseMapper) {
        super(courseMapper, courseRepository);
        this.courseRepository = courseRepository;
        this.courseMapper = courseMapper;
    }

    @Override
    public Set<CourseDto> findAllMainInstructorCoursesForProfessor(long professorId) {
        final Set<Course> mainInstructorCourses = courseRepository.findAllByMainInstructorProfessorId(
                professorId);
        return courseMapper.modelsToDtos(mainInstructorCourses);
    }

    @Override
    public CourseDto update(UUID courseGuid, CourseUpsertDto courseUpdateDto) {
        final Course courseToUpdate = courseRepository.findByGuid(courseGuid).orElseThrow();
        courseToUpdate.courseName(courseUpdateDto.courseName());
        final Course updated = courseRepository.update(courseToUpdate);
        return courseMapper.modelToDto(updated);
    }

    @Override
    public CourseDto create(CourseUpsertDto courseCreateDto) {
        final Course course = courseMapper.createDtoToModel(courseCreateDto);
        return courseMapper.modelToDto(courseRepository.persist(course));
    }

    @Override
    public Set<CourseDto> findAllForStudent(long l, PageRequest of) {
        return Set.of();
    }
}
