package net.bnijik.schoolScheduler.mapper;

import net.bnijik.schoolScheduler.dto.student.StudentDto;
import net.bnijik.schoolScheduler.dto.student.StudentUpsertDto;
import net.bnijik.schoolScheduler.entity.Student;
import net.bnijik.schoolScheduler.service.course.CourseService;
import net.bnijik.schoolScheduler.service.group.GroupService;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class StudentMapper implements SchoolModelMapper<Student, StudentDto> {
    @Value("${school.max-courses-per-student}")
    protected int maxCoursesPerStud;

    @Autowired
    protected GroupService groupService;

    @Autowired
    protected CourseService courseService;

    @Autowired
    protected CourseMapper courseMapper;

    @Mapping(target = "group", expression = "java(groupService.findById(getGroupIdSafely(model)).orElse(null))")
    @Mapping(target = "courses", expression = "java(courseService.findAllForStudent(model.studentId(), org.springframework.data.domain.PageRequest.of(0, maxCoursesPerStud)))")
    @Mapping(target = "studentId", expression = "java(model.studentId())")
    @Mapping(target = "guid", expression = "java(model.guid())")
    @Mapping(target = "firstName", expression = "java(model.firstName())")
    @Mapping(target = "lastName", expression = "java(model.lastName())")
    @Override
    public abstract StudentDto modelToDto(Student model);


    @Override
    public abstract Student dtoToModel(StudentDto dto);

    public long getGroupIdSafely(Student student) {
        return null == student.group() ? 0 : student.group().groupId();
    }

    public abstract Student createDtoToModel(StudentUpsertDto studentCreateDto);

//    protected SortedSet<Course> sliceToSortedSet(Slice<CourseDto> courseDtos) {
//        return courseDtos.stream()
//                .map(d -> courseMapper.dtoToModel(d))
//                .collect(Collectors.toCollection(TreeSet<Course>::new));
//    }

}
