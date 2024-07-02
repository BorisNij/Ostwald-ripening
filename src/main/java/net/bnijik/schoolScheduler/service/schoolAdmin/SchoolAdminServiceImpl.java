package net.bnijik.schoolScheduler.service.schoolAdmin;

import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.mapper.SchoolModelMapper;
import net.bnijik.schoolScheduler.repository.SchoolRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;


public class SchoolAdminServiceImpl<D, M> implements SchoolAdminService<D> {
    private final SchoolModelMapper<M, D> schoolModelMapper;
    private final SchoolRepository<M> schoolRepository;

    public SchoolAdminServiceImpl(SchoolModelMapper<M, D> schoolModelMapper, SchoolRepository<M> schoolRepository) {
        this.schoolModelMapper = schoolModelMapper;
        this.schoolRepository = schoolRepository;
    }

    @Override
    public Optional<D> findByGuid(UUID guid) {
        final Optional<M> modelOptional = schoolRepository.findByGuid(guid);
        return modelOptional.map(schoolModelMapper::modelToDto);
    }

    @Override
    public PagedDto<D> findAll(int pageNum, int pageSize, String sortBy, boolean isAsc) {
        final Sort sort = isAsc ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
        final PageRequest pageRequest = PageRequest.of(pageNum, pageSize, sort);
        final Page<M> page = schoolRepository.findAll(pageRequest);
        final List<M> content = page.getContent();
        final Set<D> dtos = schoolModelMapper.modelsToDtos(content);
        return new PagedDto<>(dtos, !page.isLast());
    }

    @Override
    public D create(D d) {
        final M model = schoolModelMapper.dtoToModel(d);
        final M persistedModel = schoolRepository.persist(model);
        return schoolModelMapper.modelToDto(persistedModel);
    }

    @Override
    public Optional<D> findById(long id) {
        final Optional<M> modelOptional = schoolRepository.findById(id);
        return modelOptional.map(schoolModelMapper::modelToDto);
    }

    @Override
    public D update(D d) {
        final M model = schoolModelMapper.dtoToModel(d);
        return schoolModelMapper.modelToDto(schoolRepository.update(model));
    }

    @Override
    public void delete(long id) {
        schoolRepository.deleteById(id);
    }

}
