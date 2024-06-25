package net.bnijik.schoolScheduler.mapper;

import java.util.SortedSet;
import java.util.TreeSet;
import java.util.stream.StreamSupport;

public interface SchoolModelMapper<M, D> {
    D modelToDto(M model);

    M dtoToModel(D dto);

    default SortedSet<D> modelsToDtos(Iterable<M> models) {
        return new TreeSet<>(StreamSupport.stream(models.spliterator(), false).map(this::modelToDto).toList());
    }

    default SortedSet<M> dtosToModels(Iterable<D> dtos) {
        return new TreeSet<>(StreamSupport.stream(dtos.spliterator(), false).map(this::dtoToModel).toList());
    }

}
