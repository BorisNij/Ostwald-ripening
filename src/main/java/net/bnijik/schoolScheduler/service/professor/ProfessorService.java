package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.professor.ProfessorCreateDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorUpdateDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Transactional(readOnly = true)
public interface ProfessorService extends SchoolAdminService<ProfessorDto> {
    @Transactional
    ProfessorDto update(UUID professorGuid, ProfessorUpdateDto ProfessorUpdateDto);

    @Transactional
    ProfessorDto create(ProfessorCreateDto professorCreateDto);
}
