package net.bnijik.schoolScheduler.mapper;


import net.bnijik.schoolScheduler.dto.professor.ProfessorCreateDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.entity.Professor;
import net.bnijik.schoolScheduler.service.course.CourseService;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class ProfessorMapper implements SchoolModelMapper<Professor, ProfessorDto> {

    @Autowired
    protected CourseMapper courseMapper;

    @Autowired
    protected CourseService courseService;

    @Mapping(target = "professorId", expression = "java(model.professorId())")
    @Mapping(target = "guid", expression = "java(model.guid())")
    @Mapping(target = "firstName", expression = "java(model.firstName())")
    @Mapping(target = "lastName", expression = "java(model.lastName())")
    @Mapping(target = "taughtCourses", expression = "java(courseMapper.modelsToDtos(model.taughtCourses()))")
    @Mapping(target = "mainInstructorCourses", expression = "java(courseService.findAllMainInstructorCoursesForProfessor(model.professorId()))")
    @Override
    public abstract ProfessorDto modelToDto(Professor model);

    @Mapping(target = "professorId", expression = "java(dto.professorId())")
    @Mapping(target = "guid", expression = "java(dto.guid())")
    @Mapping(target = "firstName", expression = "java(dto.firstName())")
    @Mapping(target = "lastName", expression = "java(dto.lastName())")
    @Mapping(target = "taughtCourses", expression = "java(courseMapper.dtosToModels(dto.taughtCourses()))")
    @Override
    public abstract Professor dtoToModel(ProfessorDto dto);

    public abstract Professor createDtoToModel(ProfessorCreateDto professorCreateDto);

}


