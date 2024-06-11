package net.bnijik.schoolScheduler.mapper;

import net.bnijik.schoolScheduler.dto.GroupDto;
import net.bnijik.schoolScheduler.entity.Group;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class GroupMapper implements SchoolModelMapper<Group, GroupDto> {
    @Override
    public abstract GroupDto modelToDto(Group model);

    @Override
    public abstract Group dtoToModel(GroupDto dto);

}
