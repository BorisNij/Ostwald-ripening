package net.bnijik.schoolScheduler.dto.group;

import java.util.Objects;

public record GroupUpdateDto(String groupName){

    public GroupUpdateDto{
        Objects.requireNonNull(groupName);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"groupName\": \"" + groupName + "\"\n"
                + "}";
    }
}