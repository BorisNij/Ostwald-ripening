package net.bnijik.schoolScheduler.service.group;

import net.bnijik.schoolScheduler.dto.group.GroupCreateDto;
import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.group.GroupUpdateDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

public interface GroupService extends SchoolAdminService<GroupDto> {
    @Transactional
    GroupDto update(UUID groupGuid, GroupUpdateDto groupUpdateDto);

    @Transactional
    GroupDto create(GroupCreateDto groupCreateDto);
}
