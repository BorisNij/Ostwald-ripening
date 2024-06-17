package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/courses")
public class CourseController {

    @Autowired
    private final CourseService courseService;

    @GetMapping
    public ResponseEntity<Slice<CourseDto>> getCourses(Pageable pageable) {
        return new ResponseEntity<>(courseService.findAll(pageable), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<CourseDto> createCourse(@RequestBody CourseDto courseDto) {
        return new ResponseEntity<>(courseService.create(courseDto), HttpStatus.CREATED);
    }

    @PutMapping("{courseId}")
    public ResponseEntity<CourseDto> updateCourse(@PathVariable long courseId, @RequestBody CourseDto courseDto) {
        return new ResponseEntity<>(courseService.update(courseDto), HttpStatus.OK);
    }

    @DeleteMapping("{courseId}")
    public void deleteCourse(@PathVariable long courseId) {
        courseService.delete(courseId);
    }
}
