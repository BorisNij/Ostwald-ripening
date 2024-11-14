package net.bnijik.schoolScheduler.controller.rest;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import net.bnijik.schoolScheduler.dto.PagedDto;
import net.bnijik.schoolScheduler.dto.group.GroupDto;
import net.bnijik.schoolScheduler.dto.group.GroupUpsertDto;
import net.bnijik.schoolScheduler.service.group.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/groups")
@SecurityRequirement(name = "scheduler-users")
public class GroupController {
    @Autowired
    private final GroupService groupService;

    //TODO: implement default value loading from configurations
    @GetMapping
    public ResponseEntity<PagedDto<GroupDto>> getGroups(@RequestParam(defaultValue = "0", required = false) int pageNum,
                                                        @RequestParam(defaultValue = "10", required = false) int pageSize,
                                                        @RequestParam(defaultValue = "groupId", required = false) String sortBy,
                                                        @RequestParam(defaultValue = "true", required = false) boolean isAsc) {
        return ResponseEntity.ok(groupService.findAll(pageNum, pageSize, sortBy, isAsc));
    }

    @GetMapping(path = "/{groupGuid}")
    public ResponseEntity<GroupDto> getGroup(@PathVariable UUID groupGuid) {
        return groupService.findByGuid(groupGuid)
                .map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<GroupDto> createGroup(@RequestBody GroupUpsertDto groupCreateDto) {
        return new ResponseEntity<>(groupService.create(groupCreateDto), HttpStatus.CREATED);
    }

    @PutMapping(path = "/{groupGuid}")
    public ResponseEntity<GroupDto> updateGroup(@PathVariable UUID groupGuid,
                                                      @RequestBody GroupUpsertDto groupUpdateDto) {
        return ResponseEntity.ok(groupService.update(groupGuid,
                                                        groupUpdateDto));
    }

    @DeleteMapping("/{groupGuid}")
    public HttpStatus deleteGroup(@PathVariable UUID groupGuid) {
        final GroupDto groupDto = groupService.findByGuid(groupGuid).orElseThrow();
        groupService.delete(groupDto.groupId());
        return HttpStatus.NO_CONTENT;
    }
}
