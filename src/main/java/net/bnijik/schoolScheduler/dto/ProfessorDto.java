package net.bnijik.schoolScheduler.dto;

import org.springframework.data.domain.Slice;

import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

public record ProfessorDto(long professorId, String firstName, String lastName, Slice<CourseDto> courses) {
    public ProfessorDto {
        Objects.requireNonNull(firstName);
        Objects.requireNonNull(lastName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"professorId\": " + professorId + ",\n"
                + "\t\"firstName\": \"" + firstName + "\",\n"
                + "\t\"lastName\": \"" + lastName + "\",\n"
                + "\t\"courses\": " + coursesToString(courses) + "\n"
                + "}";
    }

    static String coursesToString(Iterable<CourseDto> courses) {
        return StreamSupport.stream(courses.spliterator(), false)
                .map(course -> tabIndentCourses(course, 3))
                .collect(Collectors.joining(",\n", "[\n", "\n\t]"));
    }

    static String tabIndentCourses(CourseDto course, int numTabs) {
        String tabs = "\t".repeat(numTabs);
        return tabs + course.toString().replace("\n", "\n" + tabs);
    }
}
