package net.bnijik.schoolScheduler.dto.schedule;

import java.time.OffsetDateTime;
import java.util.Objects;

public record ScheduleUpsertDto(String room, OffsetDateTime startTime, OffsetDateTime endTime){

    public ScheduleUpsertDto {
        Objects.requireNonNull(room);
        Objects.requireNonNull(startTime);
        Objects.requireNonNull(endTime);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"room\": \"" + room + "\",\n"
                + "\t\"startTime\": \"" + startTime + "\",\n"
                + "\t\"endTime\": \"" + endTime + "\"\n"
                + "}";
    }
}