package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.StudentDto;
import net.bnijik.schoolScheduler.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/students")
public class StudentController {
    @Autowired
    private final StudentService studentService;

    @GetMapping
    public ResponseEntity<Slice<StudentDto>> getStudents(Pageable pageable) {
        return new ResponseEntity<>(studentService.findAll(pageable), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<StudentDto> createStudent(@RequestBody StudentDto studentDto) {
        return new ResponseEntity<>(studentService.create(studentDto), HttpStatus.CREATED);
    }

    @PutMapping("{studentId}")
    public ResponseEntity<StudentDto> updateStudent(@PathVariable long studentId, @RequestBody StudentDto studentDto) {
        return new ResponseEntity<>(studentService.update(studentDto), HttpStatus.OK);
    }

    @DeleteMapping("{studentId}")
    public void deleteStudent(@PathVariable long studentId) {
        studentService.delete(studentId);
    }
}
