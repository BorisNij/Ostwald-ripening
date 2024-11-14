package net.bnijik.schoolScheduler.controller.rest;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.schedule.ScheduleDto;
import net.bnijik.schoolScheduler.dto.schedule.ScheduleUpsertDto;
import net.bnijik.schoolScheduler.service.schedule.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/schedules")
@SecurityRequirement(name = "scheduler-users")
public class ScheduleController {

    @Autowired
    private final ScheduleService scheduleService;

    //TODO: implement default value loading from configurations
    @GetMapping
    public ResponseEntity<PagedDto<ScheduleDto>> getSchedules(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                              @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                              @RequestParam(defaultValue = "scheduleId", required = false) String sortBy,
                                                              @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(scheduleService.findAll(pageNum, pageSize, sortBy, isAsc));
    }

    @GetMapping(path = "/{scheduleGuid}")
    public ResponseEntity<ScheduleDto> getSchedule(UUID scheduleGuid) {
        return scheduleService.findByGuid(scheduleGuid)
                .map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<ScheduleDto> createSchedule(ScheduleUpsertDto scheduleCreateDto) {
        return new ResponseEntity<>(scheduleService.create(scheduleCreateDto), HttpStatus.CREATED);
    }

    @PutMapping(path = "/{scheduleGuid}")
    public ResponseEntity<ScheduleDto> updateSchedule(@PathVariable UUID scheduleGuid,
                                                        @RequestBody ScheduleUpsertDto scheduleUpdateDto) {
        return ResponseEntity.ok(scheduleService.update(scheduleGuid,
                                                         scheduleUpdateDto));
    }

    @DeleteMapping("/{scheduleGuid}")
    public HttpStatus deleteSchedule(@PathVariable UUID scheduleGuid) {
        final ScheduleDto scheduleDto = scheduleService.findByGuid(scheduleGuid).orElseThrow();
        scheduleService.delete(scheduleDto.scheduleId());
        return HttpStatus.NO_CONTENT;
    }
}
