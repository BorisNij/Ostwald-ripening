package net.bnijik.schoolScheduler.service.professor;

import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.entity.Course;
import net.bnijik.schoolScheduler.entity.Professor;
import net.bnijik.schoolScheduler.mapper.ProfessorMapper;
import net.bnijik.schoolScheduler.repository.CourseRepository;
import net.bnijik.schoolScheduler.repository.ProfessorRepository;
import net.bnijik.schoolScheduler.repository.SchoolRepository;
import net.bnijik.schoolScheduler.service.schoolAdmin.SchoolAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class ProfessorServiceImpl extends SchoolAdminServiceImpl<ProfessorDto, Professor> implements ProfessorService {

    private final CourseRepository courseRepository;
    private final SchoolRepository<Professor> professorSchoolRepository;
    private final ProfessorMapper professorMapper;

    @Autowired
    public ProfessorServiceImpl(ProfessorMapper professorMapper,
                                ProfessorRepository professorRepository,
                                CourseRepository courseRepository,
                                SchoolRepository<Professor> professorSchoolRepository) {
        super(professorMapper, professorRepository);
        this.courseRepository = courseRepository;
        this.professorSchoolRepository = professorSchoolRepository;
        this.professorMapper = professorMapper;
    }

    @Override
    public ProfessorDto create(ProfessorDto professorDto) {
        if (professorDto.courses().isEmpty()) {
            return super.create(professorDto);
        }

        final Set<CourseDto> newCourses = professorDto.courses()
                .stream()
                .filter(courseDto -> courseDto.courseId() == 0)
                .collect(Collectors.toCollection(LinkedHashSet::new));
        if (!newCourses.isEmpty()) {
            return super.create(new ProfessorDto(0, professorDto.firstName(), professorDto.lastName(), newCourses));
        }
        final Set<CourseDto> existingCourses = professorDto.courses()
                .stream()
                .filter(courseDto -> courseDto.courseId() != 0)
                .collect(Collectors.toCollection(LinkedHashSet::new));
        if (!existingCourses.isEmpty()) {
            final List<Course> courses = courseRepository.findAllByCourseIdIn(existingCourses.stream()
                                                                                      .map(CourseDto::courseId)
                                                                                      .toList(), PageRequest.of(0, 5))
                    .getContent();
            final Professor mergedProfessor = professorSchoolRepository.merge(new Professor(0,
                                                                                            professorDto.firstName(),
                                                                                            professorDto.lastName(),
                                                                                            new LinkedHashSet<>(courses)));
            return professorMapper.modelToDto(mergedProfessor);
        }
        return null;
    }

}
