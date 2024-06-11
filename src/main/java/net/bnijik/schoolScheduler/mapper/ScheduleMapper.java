package net.bnijik.schoolScheduler.mapper;


import net.bnijik.schoolScheduler.dto.ScheduleDto;
import net.bnijik.schoolScheduler.entity.Schedule;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class ScheduleMapper implements SchoolModelMapper<Schedule, ScheduleDto> {

    @Autowired
    protected CourseMapper courseMapper;

    @Mapping(target = "scheduleId", expression = "java(model.scheduleId())")
    @Mapping(target = "room", expression = "java(model.room())")
    @Mapping(target = "startTime", expression = "java(model.startTime())")
    @Mapping(target = "endTime", expression = "java(model.endTime())")
    @Mapping(target = "course", expression = "java(courseMapper.modelToDto(model.course()))")
    @Override
    public abstract ScheduleDto modelToDto(Schedule model);

    @Override
    public abstract Schedule dtoToModel(ScheduleDto dto);

}
