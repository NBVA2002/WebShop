package com.javabe.webshop.controller;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.security.jwt.JwtAuthenticationFilter;
import com.javabe.webshop.security.jwt.JwtTokenProvider;
import com.javabe.webshop.service.EvaluateService;
import com.javabe.webshop.service.ProductService;
import com.javabe.webshop.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/evaluate")
@RequiredArgsConstructor
public class EvaluateController {

    @Autowired
    private final EvaluateService evaluateService;

    @Autowired
    private final ProductService productService;

    @Autowired
    JwtAuthenticationFilter jwtAuthenticationFilter;

    @Autowired
    JwtTokenProvider tokenProvider;

    @Autowired
    UserService userService;

    @PostMapping("/create/{id}")
    public EvaluateEntity addEvaluate(@PathVariable("id") Long pid,
                                      @RequestBody EvaluateEntity evaluateEntity,
                                      HttpServletRequest request) {
        String userToken = jwtAuthenticationFilter.getJwtFromRequest(request);
        String username = tokenProvider.getUserIdFromJWT(userToken);
        UserEntity userEntity = userService.findByUsername(username).get(0);
        return evaluateService.addEvaluate(pid, userEntity, evaluateEntity);
    }

    @PutMapping("/update")
    public EvaluateEntity update(@RequestBody EvaluateEntity evaluateEntity, @PathVariable("id") Long id) {
        return evaluateService.updateEvaluate(id, evaluateEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        evaluateService.deleteEvaluate(id);
    }

    @GetMapping("/list")
    public Page<EvaluateEntity> findAll(@RequestParam("limit") int limit,
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
        return evaluateService.findAll(pageable);
    }

}
