package net.bnijik.schoolScheduler.service.schoolAdmin;

import net.bnijik.schoolScheduler.dto.PagedDto;

import java.util.Optional;

public interface SchoolAdminService<T> {
    PagedDto<T> findAll(int pageNum, int pageSize, String sortBy, boolean isAsc);

    T create(T t);

    Optional<T> findById(long id);

    T update(T t);

    void delete(long id);
}
