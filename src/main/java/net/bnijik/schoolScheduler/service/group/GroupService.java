package net.bnijik.schoolScheduler.service.group;

import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.group.GroupUpsertDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Transactional(readOnly = true)
public interface GroupService extends SchoolAdminService<GroupDto> {
    @Transactional
    GroupDto update(UUID groupGuid, GroupUpsertDto groupUpdateDto);

    @Transactional
    GroupDto create(GroupUpsertDto groupCreateDto);
}
