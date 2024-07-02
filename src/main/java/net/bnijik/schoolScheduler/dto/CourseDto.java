package net.bnijik.schoolScheduler.dto;

import lombok.NonNull;

import java.util.Objects;

public record CourseDto(long courseId, String courseName, String courseDescription) implements Comparable<CourseDto> {

    public CourseDto {
        Objects.requireNonNull(courseName);
        Objects.requireNonNullElse(courseDescription, "");
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"courseId\": " + courseId + ",\n"
                + "\t\"courseName\": \"" + courseName + "\",\n"
                + "\t\"courseDescription\": \"" + courseDescription + "\"\n"
                + "}";
    }


    @Override
    public int compareTo(@NonNull CourseDto o) {
        return Long.compare(this.courseId, o.courseId);
    }
}
