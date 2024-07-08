package net.bnijik.schoolScheduler.dto.group;

import java.util.Objects;

public record GroupUpsertDto(String groupName){

    public GroupUpsertDto {
        Objects.requireNonNull(groupName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"groupName\": \"" + groupName + "\"\n"
                + "}";
    }
}