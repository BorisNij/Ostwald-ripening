package net.bnijik.schoolScheduler.dto;

import java.util.Objects;
import java.util.Set;

public record StudentDto(long studentId, GroupDto group, String firstName, String lastName, Set<CourseDto> courses) {

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
                + "\t\"group\": " + groupStr + ",\n"
                + "\t\"firstName\": \"" + firstName + "\",\n"
                + "\t\"lastName\": \"" + lastName + "\",\n"
                + "\t\"courses\": " + PagedDto.contentToString(courses) + "\n"
                + "}";
    }

}
