package net.bnijik.schoolScheduler.service.schedule;

import net.bnijik.schoolScheduler.dto.schedule.ScheduleDto;
import net.bnijik.schoolScheduler.dto.schedule.ScheduleUpsertDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Transactional(readOnly = true)
public interface ScheduleService extends SchoolAdminService<ScheduleDto> {

    @Transactional
    ScheduleDto update(UUID scheduleGuid, ScheduleUpsertDto scheduleUpdateDto);

    @Transactional
    ScheduleDto create(ScheduleUpsertDto scheduleCreateDto);

}
