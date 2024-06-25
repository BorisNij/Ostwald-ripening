package net.bnijik.schoolScheduler.mapper;


import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.entity.Professor;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class ProfessorMapper implements SchoolModelMapper<Professor, ProfessorDto> {

    @Autowired
    protected CourseMapper courseMapper;

    @Mapping(target = "professorId", expression = "java(model.professorId())")
    @Mapping(target = "firstName", expression = "java(model.firstName())")
    @Mapping(target = "lastName", expression = "java(model.lastName())")
    @Mapping(target = "courses", expression = "java(courseMapper.modelsToDtos(model.taughtCourses()))")
    @Override
    public abstract ProfessorDto modelToDto(Professor model);

    @Mapping(target = "professorId", expression = "java(dto.professorId())")
    @Mapping(target = "firstName", expression = "java(dto.firstName())")
    @Mapping(target = "lastName", expression = "java(dto.lastName())")
    @Mapping(target = "taughtCourses", expression = "java(courseMapper.dtosToModels(dto.courses()))")
    @Override
    public abstract Professor dtoToModel(ProfessorDto dto);

}


