package net.bnijik.schoolScheduler.dto;

import lombok.Builder;

import java.util.Objects;
import java.util.Set;

@Builder
public record ProfessorDto(long professorId, String firstName, String lastName, Set<CourseDto> taughtCourses) {
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
                + "\t\"courses\": " + PagedDto.contentToString(taughtCourses) + "\n"
                + "}";
    }

}
