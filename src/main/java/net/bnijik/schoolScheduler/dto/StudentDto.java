package net.bnijik.schoolScheduler.dto;

import org.springframework.data.domain.Slice;

import java.util.Objects;

public record StudentDto(long studentId, GroupDto group, String firstName, String lastName, Slice<CourseDto> courses) {

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
                + "\t\"courses\": " + coursesToString(courses) + "\n"
                + "}";
    }

    private String coursesToString(Slice<CourseDto> courses) {
        return ProfessorDto.coursesToString(courses);
    }

    private String tabIndentCourses(CourseDto course, int numTabs) {
        return ProfessorDto.tabIndentCourses(course, numTabs);
    }

}
