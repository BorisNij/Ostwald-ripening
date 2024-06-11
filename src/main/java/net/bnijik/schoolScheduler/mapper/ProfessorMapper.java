package net.bnijik.schoolScheduler.mapper;


import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.entity.Professor;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public abstract class ProfessorMapper implements SchoolModelMapper<Professor, ProfessorDto> {

    @Override
    public abstract ProfessorDto modelToDto(Professor model);

    @Override
    public abstract Professor dtoToModel(ProfessorDto dto);
}
