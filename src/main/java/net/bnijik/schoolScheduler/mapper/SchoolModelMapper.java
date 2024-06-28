package net.bnijik.schoolScheduler.mapper;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

public interface SchoolModelMapper<M, D> {
    D modelToDto(M model);

    M dtoToModel(D dto);

    default Set<D> modelsToDtos(Iterable<M> models) {
        return StreamSupport.stream(models.spliterator(), false)
                .map(this::modelToDto)
                .collect(Collectors.toCollection(LinkedHashSet::new));
    }

    default Set<M> dtosToModels(Iterable<D> dtos) {
        return StreamSupport.stream(dtos.spliterator(), false)
                .map(this::dtoToModel)
                .collect(Collectors.toCollection(LinkedHashSet::new));
    }

}
