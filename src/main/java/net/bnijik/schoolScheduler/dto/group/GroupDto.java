package net.bnijik.schoolScheduler.dto.group;

import java.util.Objects;
import java.util.UUID;

public record GroupDto(long groupId, UUID guid, String groupName) {
    public GroupDto {
        Objects.requireNonNull(groupName);
    }

    @Override
    public String toString() {
        return "{ "
                + "\"groupId\": " + groupId + ", "
                + "\"guid\": " + guid + ", "
                + "\"groupName\": \"" + groupName + "\""
                + " }";
    }
}
