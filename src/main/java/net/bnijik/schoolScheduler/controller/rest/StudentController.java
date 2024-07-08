package net.bnijik.schoolScheduler.controller.rest;


import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.student.StudentDto;
import net.bnijik.schoolScheduler.dto.student.StudentUpsertDto;
import net.bnijik.schoolScheduler.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/students")
public class StudentController {
    @Autowired
    private final StudentService studentService;

    //TODO: implement default value loading from configurations
    @GetMapping
    public ResponseEntity<PagedDto<StudentDto>> getStudents(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                            @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                            @RequestParam(defaultValue = "studentId", required = false) String sortBy,
                                                            @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(studentService.findAll(pageNum, pageSize, sortBy, isAsc));
    }

    @GetMapping(path = "/{studentGuid}")
    public ResponseEntity<StudentDto> getStudent(@PathVariable UUID studentGuid) {
        return studentService.findByGuid(studentGuid)
                .map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<StudentDto> createStudent(@RequestBody StudentUpsertDto studentCreateDto) {
        return new ResponseEntity<>(studentService.create(studentCreateDto), HttpStatus.CREATED);
    }

    @PutMapping(path = "/{studentGuid}")
    public ResponseEntity<StudentDto> updateStudent(@PathVariable UUID studentGuid,
                                                    @RequestBody StudentUpsertDto studentUpdateDto) {
        return ResponseEntity.ok(studentService.update(studentGuid,
                                                       studentUpdateDto));
    }

    @DeleteMapping("/{studentGuid}")
    public HttpStatus deleteStudent(@PathVariable UUID studentGuid) {
        final StudentDto studentDto = studentService.findByGuid(studentGuid).orElseThrow();
        studentService.delete(studentDto.studentId());
        return HttpStatus.NO_CONTENT;
    }
}
