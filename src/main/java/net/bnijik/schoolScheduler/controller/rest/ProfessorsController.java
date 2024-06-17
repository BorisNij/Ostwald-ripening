package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.service.professor.ProfessorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/professors")
public class ProfessorsController {
    @Autowired
    private final ProfessorService professorService;

    @GetMapping
    public Slice<ProfessorDto> getProfessors(Pageable pageable) {
        return professorService.findAll(pageable);
    }

    @PostMapping
    public ProfessorDto createProfessor(@RequestBody ProfessorDto professorDto) {
        return professorService.create(professorDto);
    }

    @PutMapping("{professorId}")
    public ProfessorDto updateProfessor(@PathVariable long professorId, @RequestBody ProfessorDto professorDto) {
        return professorService.update(professorDto);
    }

    @DeleteMapping("{professorId}")
    public void deleteProfessor(@PathVariable long professorId) {
        professorService.delete(professorId);
    }
}
