package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.course.CourseAddToUserDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorDto;
import net.bnijik.schoolScheduler.dto.professor.ProfessorUpsertDto;
import net.bnijik.schoolScheduler.service.professor.ProfessorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/professors")
public class ProfessorController {
    @Autowired
    private final ProfessorService professorService;

    //TODO: implement default value loading from configurations
    @GetMapping
    public ResponseEntity<PagedDto<ProfessorDto>> getProfessors(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                                @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                                @RequestParam(defaultValue = "professorId", required = false) String sortBy,
                                                                @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(professorService.findAll(pageNum, pageSize, sortBy, isAsc));
    }

    @GetMapping(path = "/{professorGuid}")
    public ResponseEntity<ProfessorDto> getProfessor(@PathVariable UUID professorGuid) {
        return professorService.findByGuid(professorGuid)
                .map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<ProfessorDto> createProfessor(@RequestBody ProfessorUpsertDto professorCreateDto) {
        return new ResponseEntity<>(professorService.create(professorCreateDto), HttpStatus.CREATED);
    }

    @PutMapping(path = "/{professorGuid}")
    public ResponseEntity<ProfessorDto> updateProfessor(@PathVariable UUID professorGuid,
                                                 @RequestBody ProfessorUpsertDto professorUpdateDto) {
        return ResponseEntity.ok(professorService.update(professorGuid,
                                                            professorUpdateDto));
    }

    @DeleteMapping("/{professorGuid}")
    public HttpStatus deleteProfessor(@PathVariable UUID professorGuid) {
        final ProfessorDto professorDto = professorService.findByGuid(professorGuid).orElseThrow();
        professorService.delete(professorDto.professorId());
        return HttpStatus.NO_CONTENT;
    }

    @PostMapping(path = "/{professorGuid}")
    public ResponseEntity<ProfessorDto> addTeachingCourse(@PathVariable UUID professorGuid, @RequestBody CourseDto courseDto) {
        final ProfessorDto professorDto = professorService.addTeachingCourse(professorGuid, courseDto);
        return new ResponseEntity<>(professorDto, HttpStatus.CREATED);
    }

}
