package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.StudentDto;
import net.bnijik.schoolScheduler.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/students")
public class StudentController {
    @Autowired
    private final StudentService studentService;

    @GetMapping
    public Slice<StudentDto> getStudents(Pageable pageable) {
        return studentService.findAll(pageable);
    }

    @PostMapping
    public StudentDto createStudent(@RequestBody StudentDto studentDto) {
        return studentService.create(studentDto);
    }

    @PutMapping("{studentId}")
    public StudentDto updateStudent(@PathVariable long studentId, @RequestBody StudentDto studentDto) {
        return studentService.update(studentDto);
    }

    @DeleteMapping("{studentId}")
    public void deleteStudent(@PathVariable long studentId) {
        studentService.delete(studentId);
    }
}
