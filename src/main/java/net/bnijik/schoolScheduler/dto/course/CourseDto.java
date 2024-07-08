package net.bnijik.schoolScheduler.dto.course;

import lombok.Builder;
import lombok.NonNull;

import java.util.Objects;
import java.util.UUID;

@Builder
public record CourseDto(long courseId, UUID guid, String courseName, String courseDescription) implements Comparable<CourseDto> {

    public CourseDto {
        Objects.requireNonNull(courseName);
        courseDescription = Objects.requireNonNullElse(courseDescription, "");
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"courseId\": " + courseId + ",\n"
                + "\t\"guid\": " + guid + ",\n"
                + "\t\"courseName\": \"" + courseName + "\",\n"
                + "\t\"courseDescription\": \"" + courseDescription + "\"\n"
                + "}";
    }


    @Override
    public int compareTo(@NonNull CourseDto o) {
        return Long.compare(this.courseId, o.courseId);
    }
}
