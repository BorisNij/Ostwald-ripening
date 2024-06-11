package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.entity.Professor;
import net.bnijik.schoolScheduler.mapper.ProfessorMapper;
import net.bnijik.schoolScheduler.repository.ProfessorRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class ProfessorServiceImpl extends SchoolAdminServiceImpl<ProfessorDto, Professor> implements ProfessorService {

    public ProfessorServiceImpl(ProfessorMapper professorMapper, ProfessorRepository professorRepository) {
        super(professorMapper, professorRepository);
    }

}
