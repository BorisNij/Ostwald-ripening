package net.bnijik.schoolScheduler.controller.rest;

import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.CourseDto;
import net.bnijik.schoolScheduler.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/courses")
public class CourseController {

    @Autowired
    private final CourseService courseService;

    @GetMapping
    public Slice<CourseDto> getCourses(Pageable pageable) {
        return courseService.findAll(pageable);
    }

    @PostMapping
    public CourseDto createCourse(@RequestBody CourseDto courseDto) {
        return courseService.create(courseDto);
    }

    @PutMapping("{courseId}")
    public CourseDto updateCourse(@PathVariable long courseId, @RequestBody CourseDto courseDto) {
        return courseService.update(courseDto);
    }

    @DeleteMapping("{courseId}")
    public void deleteCourse(@PathVariable long courseId) {
        courseService.delete(courseId);
    }
}
