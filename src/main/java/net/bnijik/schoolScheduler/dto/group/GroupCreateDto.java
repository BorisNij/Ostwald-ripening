package net.bnijik.schoolScheduler.dto.group;

import java.util.Objects;

public record GroupCreateDto(String groupName){

    public GroupCreateDto{
        Objects.requireNonNull(groupName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"groupName\": \"" + groupName + "\"\n"
                + "}";
    }
}