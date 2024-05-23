package net.bnijik.schoolScheduler.mapper;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.entity.Course;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class CourseMapper implements SchoolModelMapper<Course, CourseDto> {
    @Override
    public abstract CourseDto modelToDto(Course model);

    @Override
    public abstract Course dtoToModel(CourseDto dto);

}
