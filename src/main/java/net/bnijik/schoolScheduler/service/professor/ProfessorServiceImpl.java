package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorCreateDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorUpdateDto;
import net.bnijik.schoolScheduler.entity.Professor;
import net.bnijik.schoolScheduler.mapper.CourseMapper;
import net.bnijik.schoolScheduler.mapper.ProfessorMapper;
import net.bnijik.schoolScheduler.repository.ProfessorRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class ProfessorServiceImpl extends SchoolAdminServiceImpl<ProfessorDto, Professor> implements ProfessorService {

    private final ProfessorMapper professorMapper;
    private final ProfessorRepository professorRepository;
    private final CourseMapper courseMapper;

    @Autowired
    public ProfessorServiceImpl(ProfessorMapper professorMapper,
                                ProfessorRepository professorRepository,
                                CourseMapper courseMapper) {
        super(professorMapper, professorRepository);
        this.professorMapper = professorMapper;
        this.professorRepository = professorRepository;
        this.courseMapper = courseMapper;
    }

    @Override
    public ProfessorDto update(UUID professorGuid, ProfessorUpdateDto professorUpdateDto) {
        final Professor professorToUpdate = professorRepository.findByGuid(professorGuid).orElseThrow();
        professorToUpdate.firstName(professorUpdateDto.firstName()).lastName(professorUpdateDto.lastName());
        final Professor updated = professorRepository.update(professorToUpdate);
        return professorMapper.modelToDto(updated);
    }

    @Override
    public ProfessorDto create(ProfessorCreateDto professorCreateDto) {
        final Professor professor = professorMapper.createDtoToModel(professorCreateDto);
        return professorMapper.modelToDto(professorRepository.persist(professor));
    }

    @Override
    public ProfessorDto addTeachingCourse(UUID professorGuid, CourseDto courseDto) {
        final Professor professor = professorRepository.findByGuid(professorGuid).orElseThrow();
        professor.taughtCourses().add(courseMapper.dtoToModel(courseDto));
        final Professor updatedProfessor = professorRepository.merge(professor);
        return professorMapper.modelToDto(updatedProfessor);
    }

}
