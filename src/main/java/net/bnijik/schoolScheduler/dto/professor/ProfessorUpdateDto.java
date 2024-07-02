package net.bnijik.schoolScheduler.dto.professor;

import java.util.Objects;

public record ProfessorUpdateDto (String firstName, String lastName) {
    public ProfessorUpdateDto {
        Objects.requireNonNull(firstName);
        Objects.requireNonNull(lastName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"firstName\": \"" + firstName + "\",\n"
                + "\t\"lastName\": \"" + lastName + "\"\n"
                + "}";
    }

}