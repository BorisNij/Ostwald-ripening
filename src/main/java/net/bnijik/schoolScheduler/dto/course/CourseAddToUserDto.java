package net.bnijik.schoolScheduler.dto.course;

import java.util.Objects;
import java.util.UUID;

public record CourseAddToUserDto(UUID guid) {

    public CourseAddToUserDto{
        Objects.requireNonNull(guid);
    }
    @Override
    public String toString() {
        return "{\n"
                + "\t\"courseGuid\": \"" + guid + "\"\n"
                + "}";
    }}
