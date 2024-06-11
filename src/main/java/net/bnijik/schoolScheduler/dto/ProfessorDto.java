package net.bnijik.schoolScheduler.dto;

import java.util.Objects;
import java.util.SortedSet;
import java.util.stream.Collectors;

public record ProfessorDto(long professorId, String firstName, String lastName, SortedSet<CourseDto> courses) {
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

    private String coursesToString(SortedSet<CourseDto> courses) {
        String coursesString = courses.stream()
                .map(course -> tabIndentCourses(course, 3))
                .collect(Collectors.joining(",\n", "[\n", "\n\t]"));
        return coursesString;
    }

    private String tabIndentCourses(CourseDto course, int numTabs) {
        String tabs = "\t".repeat(numTabs);
        return tabs + course.toString().replace("\n", "\n" + tabs);
    }
}
