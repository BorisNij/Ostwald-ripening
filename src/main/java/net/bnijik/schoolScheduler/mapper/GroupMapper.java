package net.bnijik.schoolScheduler.mapper;

import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.group.GroupUpsertDto;
import net.bnijik.schoolScheduler.entity.Group;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class GroupMapper implements SchoolModelMapper<Group, GroupDto> {
    @Mapping(target = "groupId", expression = "java(model.groupId())")
    @Mapping(target = "groupName", expression = "java(model.groupName())")
    @Override
    public abstract GroupDto modelToDto(Group model);

    @Override
    public abstract Group dtoToModel(GroupDto dto);

    public abstract Group createDtoToModel(GroupUpsertDto groupCreateDto);

}
