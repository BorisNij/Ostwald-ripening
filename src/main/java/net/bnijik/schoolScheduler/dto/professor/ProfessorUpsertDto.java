package net.bnijik.schoolScheduler.dto.professor;

import java.util.Objects;

public record ProfessorUpsertDto(String firstName, String lastName) {
    public ProfessorUpsertDto {
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
