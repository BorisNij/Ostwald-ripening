package net.bnijik.schoolScheduler.service.student;

import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.student.StudentDto;
import net.bnijik.schoolScheduler.dto.student.StudentUpsertDto;
import net.bnijik.schoolScheduler.entity.Course;
import net.bnijik.schoolScheduler.entity.Group;
import net.bnijik.schoolScheduler.entity.Student;
import net.bnijik.schoolScheduler.mapper.GroupMapper;
import net.bnijik.schoolScheduler.mapper.StudentMapper;
import net.bnijik.schoolScheduler.repository.CourseRepository;
import net.bnijik.schoolScheduler.repository.StudentRepository;
import net.bnijik.schoolScheduler.service.group.GroupService;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.*;

@Service
public class StudentServiceImpl extends SchoolAdminServiceImpl<StudentDto, Student> implements StudentService {

    private final StudentMapper studentMapper;
    private final StudentRepository studentRepository;
    private final CourseRepository courseRepository;
    private final GroupService groupService;
    private final GroupMapper groupMapper;

    @Autowired
    public StudentServiceImpl(StudentMapper studentMapper,
                              StudentRepository studentRepository,
                              CourseRepository courseRepository,
                              GroupService groupService,
                              GroupMapper groupMapper) {
        super(studentMapper, studentRepository);
        this.studentMapper = studentMapper;
        this.studentRepository = studentRepository;
        this.courseRepository = courseRepository;
        this.groupService = groupService;
        this.groupMapper = groupMapper;
    }

    @Override
    public PagedDto<StudentDto> findAllByCourseName(String courseName,int pageNum, int pageSize, String sortBy, boolean isAsc) {
        final Sort sort = isAsc ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
        final PageRequest pageRequest = PageRequest.of(pageNum, pageSize, sort);
        final Page<Student> page = studentRepository.findAll(pageRequest);
        final Set<StudentDto> studentDtos = studentMapper.modelsToDtos(page.getContent());
        return new PagedDto<>(studentDtos, !page.isLast());
    }

    @Override
    public boolean enrollInCourses(long studentId, final List<Long> courseIds) {
        if (CollectionUtils.isEmpty(courseIds)) {
            return true;
        }

        if (courseIds.stream().anyMatch(Objects::isNull)) {
            //TODO: throw exception custom instead
            return false;
        }

        final Optional<Student> studentOptional = studentRepository.findByIdWithCourses(studentId);

        if (studentOptional.isEmpty()) {
            //TODO: throw custom exception instead
            return false;
        }
        final Student student = studentOptional.get();

        final List<Course> courses = courseIds.stream().map(courseRepository::getReferenceById).toList();

        if (CollectionUtils.isEmpty(courses)) {
            return true;
        }

        student.addCourses(courses);
        return true;
    }

    @Override
    public boolean withdrawFromCourse(long studentId, long courseId) {
        final Course courseProxyWithId = courseRepository.getReferenceById(courseId);

        final Optional<Student> studentOptional = studentRepository.findByIdWithCourses(studentId);
        if (studentOptional.isEmpty()) {
            //TODO: throw custom exception instead
            return false;
        }

        studentOptional.get().removeCourse(courseProxyWithId);
        return true;
    }

    @Override
    public StudentDto create(String firstName, String lastName, long groupId) {
        final GroupDto groupDto = groupService.findById(groupId).orElse(null);
        final Group group = groupMapper.dtoToModel(groupDto);
        return super.create(studentMapper.modelToDto(new Student().firstName(firstName)
                                                             .lastName(lastName)
                                                             .group(group)));
    }

    @Override
    public StudentDto update(UUID studentGuid, StudentUpsertDto studentUpdateDto) {
        final Student studentToUpdate = studentRepository.findByGuid(studentGuid).orElseThrow();
        studentToUpdate.firstName(studentUpdateDto.firstName()).lastName(studentUpdateDto.lastName());
        final Student updated = studentRepository.update(studentToUpdate);
        return studentMapper.modelToDto(updated);
    }

    @Override
    public StudentDto create(StudentUpsertDto studentCreateDto) {
        final Student student = studentMapper.createDtoToModel(studentCreateDto);
        return super.create(studentMapper.modelToDto(student));
    }
}
