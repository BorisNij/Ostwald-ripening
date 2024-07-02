package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.ProfessorDto;
import net.bnijik.schoolScheduler.service.professor.ProfessorService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public ResponseEntity<PagedDto<ProfessorDto>> getProfessors(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                                @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                                @RequestParam(defaultValue = "professorId", required = false) String sortBy,
                                                                @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(professorService.findAll(pageNum, pageSize, sortBy, isAsc));
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
