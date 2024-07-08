package net.bnijik.schoolScheduler.service.schoolAdmin;

import net.bnijik.schoolScheduler.dto.PagedDto;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;
import java.util.UUID;

@Transactional(readOnly = true)
public interface SchoolAdminService<T> {
    PagedDto<T> findAll(int pageNum, int pageSize, String sortBy, boolean isAsc);

    @Transactional
    T create(T t);

    Optional<T> findById(long id);

    @Transactional
    T update(T t);

    @Transactional
    T merge(T t);

    @Transactional
    void delete(long id);

    Optional<T> findByGuid(UUID guid);

}
