package net.bnijik.schoolScheduler.dto.student;

import java.util.Objects;

public record StudentUpsertDto(String firstName, String lastName) {
    public StudentUpsertDto {
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
