package net.bnijik.schoolScheduler.service.group;

import net.bnijik.schoolScheduler.dto.group.GroupCreateDto;
import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.group.GroupUpdateDto;
import net.bnijik.schoolScheduler.entity.Group;
import net.bnijik.schoolScheduler.mapper.GroupMapper;
import net.bnijik.schoolScheduler.repository.GroupRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class GroupServiceImpl extends SchoolAdminServiceImpl<GroupDto,Group> implements GroupService {
    private final GroupMapper groupMapper;
    private final GroupRepository groupRepository;

    @Autowired
    public GroupServiceImpl(GroupMapper groupMapper, GroupRepository groupRepository) {
        super(groupMapper, groupRepository);
        this.groupMapper = groupMapper;
        this.groupRepository = groupRepository;
    }

    @Override
    public GroupDto update(UUID groupGuid, GroupUpdateDto groupUpdateDto) {
        final Group groupToUpdate = groupRepository.findByGuid(groupGuid).orElseThrow();
        groupToUpdate.groupName(groupUpdateDto.groupName());
        final Group updated = groupRepository.update(groupToUpdate);
        return groupMapper.modelToDto(updated);
    }

    @Override
    public GroupDto create(GroupCreateDto groupCreateDto) {
        final Group group = groupMapper.createDtoToModel(groupCreateDto);
        return groupMapper.modelToDto(groupRepository.persist(group));
    }
}
