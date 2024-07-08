package net.bnijik.schoolScheduler.mapper;

import net.bnijik.schoolScheduler.dto.course.CourseDto;
import net.bnijik.schoolScheduler.dto.course.CourseUpsertDto;
import net.bnijik.schoolScheduler.entity.Course;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class CourseMapper implements SchoolModelMapper<Course, CourseDto> {
    @Mapping(target = "courseId", expression = "java(model.courseId())")
    @Mapping(target = "guid", expression = "java(model.guid())")
    @Mapping(target = "courseName", expression = "java(model.courseName())")
    @Mapping(target = "courseDescription", expression = "java(model.courseDescription())")
    @Override
    public abstract CourseDto modelToDto(Course model);

    @Override
    public abstract Course dtoToModel(CourseDto dto);

    public abstract Course createDtoToModel(CourseUpsertDto courseCreateDto);
}
