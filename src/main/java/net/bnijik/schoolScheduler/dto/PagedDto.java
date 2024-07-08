package net.bnijik.schoolScheduler.dto;

import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

public record PagedDto<T>(Iterable<T> page, boolean hasNext) {
    public PagedDto {
        Objects.requireNonNull(page);
    }

    public static <T> String contentToString(Iterable<T> content) {
        return StreamSupport.stream(content.spliterator(), false)
                .map(PagedDto::tabIndentContentItem)
                .collect(Collectors.joining(",\n", "[\n", "\n\t]"));
    }

    private static <T> String tabIndentContentItem(T item) {
        final String tabs = "\t".repeat(3);
        return tabs + item.toString().replace("\n", "\n" + tabs);
    }

    @Override
    public String toString() {
        return "{\n"
                + "\t\"content\": " + contentToString(page) + ",\n"
                + "\t\"hasNext\": " + hasNext + "\n"
                + "}";
    }
}
