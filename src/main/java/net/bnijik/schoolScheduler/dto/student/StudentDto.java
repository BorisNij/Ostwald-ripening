package net.bnijik.schoolScheduler.dto.student;

import lombok.Builder;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.course.CourseDto;
import net.bnijik.schoolScheduler.dto.group.GroupDto;

import java.util.Objects;
import java.util.Set;
import java.util.UUID;

@Builder
public record StudentDto(long studentId, UUID guid, GroupDto group, String firstName, String lastName, Set<CourseDto> courses) {

    public StudentDto {
        Objects.requireNonNull(firstName);
        Objects.requireNonNull(lastName);
        Objects.requireNonNull(courses);
    }

    @Override
    public String toString() {
        String groupStr = null == group ? "null" : group().toString();
        return "{\n"
                + "\t\"studentId\": " + studentId + ",\n"
                + "\t\"guid\": " + guid + ",\n"
                + "\t\"group\": " + groupStr + ",\n"
                + "\t\"firstName\": \"" + firstName + "\",\n"
                + "\t\"lastName\": \"" + lastName + "\",\n"
                + "\t\"courses\": " + PagedDto.contentToString(courses) + "\n"
                + "}";
    }

}
