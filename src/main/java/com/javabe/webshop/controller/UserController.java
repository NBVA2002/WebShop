package com.javabe.webshop.controller;

import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class UserController {
    @Autowired
    private final UserService userService;

    @PostMapping("/create")
    public UserEntity create(@RequestBody UserEntity userEntity) {
        return userService.create(userEntity);
    }

    @PutMapping("/update/{id}")
    public UserEntity update(@RequestBody UserEntity userEntity, @PathVariable("id") Long id) {
        return userService.update(id, userEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        userService.delete(id);
    }

    @GetMapping("/list")
    public Page<UserEntity> findAll(@RequestParam("limit") int limit,
                                    @RequestParam("page") int page,
                                    @RequestParam("sortby") String sortBy,
                                    @RequestParam("sort") String sort) {
        Pageable pageable = null;
        if (!sortBy.equals("none")) {
            if (sort.equals("desc")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Sort.Direction.DESC, sortBy));
            } else if (sort.equals("asc")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Sort.Direction.ASC, sortBy));
            }
        } else {
            pageable = PageRequest.of(page - 1, limit);
        }
        return userService.findAll(pageable);
    }

    @GetMapping("/list/{id}")
    public UserEntity findById(@PathVariable("id") Long id) {
        return userService.findById(id);
    }

    @GetMapping("/username/{username}")
    public UserEntity findByUsername(@PathVariable("username") String username){
        return userService.findByUsername(username).get(0);
    }

}