package net.bnijik.schoolScheduler.dto.professor;

import lombok.Builder;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.course.CourseDto;

import java.util.Objects;
import java.util.Set;
import java.util.UUID;

@Builder
public record ProfessorDto(long professorId, UUID guid, String firstName, String lastName, Set<CourseDto> taughtCourses, Set<CourseDto> mainInstructorCourses) {
    public ProfessorDto {
        Objects.requireNonNull(firstName);
        Objects.requireNonNull(lastName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"professorId\": " + professorId + ",\n"
                + "\t\"guid\": " + guid + ",\n"
                + "\t\"firstName\": \"" + firstName + "\",\n"
                + "\t\"lastName\": \"" + lastName + "\",\n"
                + "\t\"courses\": " + PagedDto.contentToString(taughtCourses) + "\n"
                + "\t\"courses\": " + PagedDto.contentToString(mainInstructorCourses) + "\n"
                + "}";
    }

}
