package net.bnijik.schoolScheduler.dto;

import java.time.OffsetDateTime;
import java.util.Objects;

public record ScheduleDto(long scheduleId, String room, OffsetDateTime startTime, OffsetDateTime endTime,
                          CourseDto course) {
    public ScheduleDto{
        Objects.requireNonNull(room);
        Objects.requireNonNull(startTime);
        Objects.requireNonNull(endTime);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"scheduleId\": " + scheduleId + ",\n"
                + "\t\"room\": \"" + room + "\",\n"
                + "\t\"startTime\": \"" + startTime + "\"\n"
                + "\t\"endTime\": \"" + endTime + "\"\n"
                + "\t\"course\": \"" + course + "\"\n"
                + "}";
    }
}
