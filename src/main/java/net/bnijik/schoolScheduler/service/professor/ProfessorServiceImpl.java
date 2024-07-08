package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorCreateDto;
import net.bnijik.schoolScheduler.dto.course.CourseAddToUserDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorUpsertDto;
import net.bnijik.schoolScheduler.entity.Course;
import net.bnijik.schoolScheduler.entity.Professor;
import net.bnijik.schoolScheduler.mapper.CourseMapper;
import net.bnijik.schoolScheduler.mapper.ProfessorMapper;
import net.bnijik.schoolScheduler.repository.ProfessorRepository;
import net.bnijik.schoolScheduler.service.course.CourseService;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class ProfessorServiceImpl extends SchoolAdminServiceImpl<ProfessorDto, Professor> implements ProfessorService {

    private final ProfessorMapper professorMapper;
    private final CourseMapper courseMapper;
    private final ProfessorRepository professorRepository;
    private final CourseService courseService;

    @Autowired
    public ProfessorServiceImpl(ProfessorMapper professorMapper,
                                ProfessorRepository professorRepository,
                                CourseMapper courseMapper, CourseService courseService) {
        super(professorMapper, professorRepository);
        this.professorMapper = professorMapper;
        this.courseMapper = courseMapper;
        this.professorRepository = professorRepository;
        this.courseService = courseService;
    }

    @Override
    public ProfessorDto update(UUID professorGuid, ProfessorUpsertDto professorUpdateDto) {
        final Professor professorToUpdate = professorRepository.findByGuid(professorGuid).orElseThrow();
        professorToUpdate.firstName(professorUpdateDto.firstName()).lastName(professorUpdateDto.lastName());
        final Professor updated = professorRepository.update(professorToUpdate);
        return professorMapper.modelToDto(updated);
    }

    @Override
    public ProfessorDto create(ProfessorUpsertDto professorCreateDto) {
        final Professor professor = professorMapper.createDtoToModel(professorCreateDto);
        return super.create(professorMapper.modelToDto(professor));
    }

    @Override
    public ProfessorDto addTeachingCourse(UUID professorGuid, CourseDto courseDto) {
        final Professor professor = professorRepository.findByGuid(professorGuid).orElseThrow();
        professor.taughtCourses().add(courseMapper.dtoToModel(courseDto));
        final Professor updatedProfessor = professorRepository.merge(professor);
        return professorMapper.modelToDto(updatedProfessor);
    }

}
