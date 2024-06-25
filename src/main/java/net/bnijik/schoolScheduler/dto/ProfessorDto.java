package net.bnijik.schoolScheduler.dto;

import java.util.Objects;
import java.util.SortedSet;

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
                + "\t\"courses\": " + PagedDto.contentToString(courses) + "\n"
                + "}";
    }

}
