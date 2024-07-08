package net.bnijik.schoolScheduler.dto.course;

import java.util.Objects;

public record CourseUpsertDto(String courseName, String courseDescription) {

    public CourseUpsertDto {
        Objects.requireNonNull(courseName);
        courseDescription = Objects.requireNonNullElse(courseDescription, "");
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"courseName\": \"" + courseName + "\",\n"
                + "\t\"courseDescription\": \"" + courseDescription + "\"\n"
                + "}";
    }
}
