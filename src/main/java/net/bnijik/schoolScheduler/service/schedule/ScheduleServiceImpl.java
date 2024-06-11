package net.bnijik.schoolScheduler.service.schedule;

import net.bnijik.schoolScheduler.dto.ScheduleDto;
import net.bnijik.schoolScheduler.entity.Schedule;
import net.bnijik.schoolScheduler.mapper.ScheduleMapper;
import net.bnijik.schoolScheduler.repository.ScheduleRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl extends SchoolAdminServiceImpl<ScheduleDto, Schedule> implements ScheduleService {

    public ScheduleServiceImpl(ScheduleMapper scheduleMapper, ScheduleRepository scheduleRepository) {
        super(scheduleMapper, scheduleRepository);
    }
}
