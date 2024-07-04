package net.bnijik.schoolScheduler.service.schedule;

import net.bnijik.schoolScheduler.dto.schedule.ScheduleCreateDto;
import net.bnijik.schoolScheduler.dto.schedule.ScheduleDto;
import net.bnijik.schoolScheduler.dto.schedule.ScheduleUpdateDto;
import net.bnijik.schoolScheduler.entity.Schedule;
import net.bnijik.schoolScheduler.mapper.ScheduleMapper;
import net.bnijik.schoolScheduler.repository.ScheduleRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class ScheduleServiceImpl extends SchoolAdminServiceImpl<ScheduleDto, Schedule> implements ScheduleService {

    private final ScheduleMapper scheduleMapper;
    private final ScheduleRepository scheduleRepository;

    @Autowired
    public ScheduleServiceImpl(ScheduleMapper scheduleMapper, ScheduleRepository scheduleRepository) {
        super(scheduleMapper, scheduleRepository);
        this.scheduleMapper = scheduleMapper;
        this.scheduleRepository = scheduleRepository;
    }

    @Override
    public ScheduleDto update(UUID scheduleGuid, ScheduleUpdateDto scheduleUpdateDto) {
        final Schedule scheduleToUpdate = scheduleRepository.findByGuid(scheduleGuid).orElseThrow();
        scheduleToUpdate.room(scheduleUpdateDto.room())
                .startTime(scheduleUpdateDto.startTime())
                .endTime(scheduleToUpdate.endTime());
        final Schedule updated = scheduleRepository.update(scheduleToUpdate);
        return scheduleMapper.modelToDto(updated);
    }

    @Override
    public ScheduleDto create(ScheduleCreateDto scheduleCreateDto) {
        final Schedule schedule = scheduleMapper.createDtoToModel(scheduleCreateDto);
        return scheduleMapper.modelToDto(scheduleRepository.persist(schedule));
    }
}
