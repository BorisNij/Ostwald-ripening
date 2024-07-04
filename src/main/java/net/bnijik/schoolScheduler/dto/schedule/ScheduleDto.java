package net.bnijik.schoolScheduler.dto.schedule;

import lombok.Builder;

import java.time.OffsetDateTime;
import java.util.Objects;
import java.util.UUID;

@Builder
public record ScheduleDto(long scheduleId, UUID guid, String room, OffsetDateTime startTime, OffsetDateTime endTime) {
    public ScheduleDto{
        Objects.requireNonNull(room);
        Objects.requireNonNull(startTime);
        Objects.requireNonNull(endTime);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"scheduleId\": " + scheduleId + ",\n"
                + "\t\"scheduleId\": " + guid + ",\n"
                + "\t\"room\": \"" + room + "\",\n"
                + "\t\"startTime\": \"" + startTime + "\"\n"
                + "\t\"endTime\": \"" + endTime + "\"\n"
                + "}";
    }
}
