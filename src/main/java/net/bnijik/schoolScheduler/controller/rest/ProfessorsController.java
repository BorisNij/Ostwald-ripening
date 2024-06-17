package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.service.professor.ProfessorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/professors")
public class ProfessorsController {
    @Autowired
    private final ProfessorService professorService;

    @GetMapping
    public ResponseEntity<Slice<ProfessorDto>> getProfessors(Pageable pageable) {
        return new ResponseEntity<>(professorService.findAll(pageable), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<ProfessorDto> createProfessor(@RequestBody ProfessorDto professorDto) {
        return new ResponseEntity<>(professorService.create(professorDto), HttpStatus.CREATED);
    }

    @PutMapping("{professorId}")
    public ResponseEntity<ProfessorDto> updateProfessor(@PathVariable long professorId, @RequestBody ProfessorDto professorDto) {
        return new ResponseEntity<>(professorService.update(professorDto), HttpStatus.OK);
    }

    @DeleteMapping("{professorId}")
    public void deleteProfessor(@PathVariable long professorId) {
        professorService.delete(professorId);
    }
}
