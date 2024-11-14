package net.bnijik.schoolScheduler.controller.rest;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.course.CourseDto;
import net.bnijik.schoolScheduler.dto.course.CourseUpsertDto;
import net.bnijik.schoolScheduler.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/courses")
@SecurityRequirement(name = "scheduler-users")
public class CourseController {
    @Autowired
    private final CourseService courseService;

    //TODO: implement default value loading from configurations
    @GetMapping
    public ResponseEntity<PagedDto<CourseDto>> getCourses(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                          @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                          @RequestParam(defaultValue = "courseId", required = false) String sortBy,
                                                          @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(courseService.findAll(pageNum, pageSize, sortBy, isAsc));
    }

    @GetMapping(path = "/{courseGuid}")
    public ResponseEntity<CourseDto> getCourse(@PathVariable UUID courseGuid) {
        return courseService.findByGuid(courseGuid)
                .map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<CourseDto> createCourse(@RequestBody CourseUpsertDto courseCreateDto) {
        return new ResponseEntity<>(courseService.create(courseCreateDto), HttpStatus.CREATED);
    }

    @PutMapping(path = "/{courseGuid}")
    public ResponseEntity<CourseDto> updateCourse(@PathVariable UUID courseGuid,
                                                @RequestBody CourseUpsertDto courseUpdateDto) {
        return ResponseEntity.ok(courseService.update(courseGuid,
                                                     courseUpdateDto));
    }

    @DeleteMapping("/{courseGuid}")
    public HttpStatus deleteCourse(@PathVariable UUID courseGuid) {
        final CourseDto courseDto = courseService.findByGuid(courseGuid).orElseThrow();
        courseService.delete(courseDto.courseId());
        return HttpStatus.NO_CONTENT;
    }
}
