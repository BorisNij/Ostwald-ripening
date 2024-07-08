package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.course.CourseAddToUserDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorUpsertDto;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminService;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Transactional(readOnly = true)
public interface ProfessorService extends SchoolAdminService<ProfessorDto> {
    @Transactional
    ProfessorDto update(UUID professorGuid, ProfessorUpsertDto ProfessorUpdateDto);

    @Transactional
    ProfessorDto create(ProfessorUpsertDto professorCreateDto);

    @Transactional
    ProfessorDto addTeachingCourse(UUID professorGuid, CourseDto courseDto);
}
