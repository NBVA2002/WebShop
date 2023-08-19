package com.javabe.webshop.controller;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.security.jwt.JwtAuthenticationFilter;
import com.javabe.webshop.security.jwt.JwtTokenProvider;
import com.javabe.webshop.service.EvaluateService;
import com.javabe.webshop.service.OrderService;
import com.javabe.webshop.service.ProductService;
import com.javabe.webshop.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {

    @Autowired
    private final OrderService orderService;

    @Autowired
    private final ProductService productService;

    @Autowired
    JwtAuthenticationFilter jwtAuthenticationFilter;

    @Autowired
    JwtTokenProvider tokenProvider;

    @Autowired
    UserService userService;

    @PostMapping("/create")
    public OrderEntity addEvaluate(@RequestBody OrderEntity orderEntity,
                                      HttpServletRequest request) {
        String userToken = jwtAuthenticationFilter.getJwtFromRequest(request);
        String username = tokenProvider.getUserIdFromJWT(userToken);
        UserEntity userEntity = userService.findByUsername(username).get(0);
        return orderService.addOrder(userEntity, orderEntity);
    }

    @PutMapping("/update")
    public OrderEntity update(@RequestBody OrderEntity orderEntity, @PathVariable("id") Long id) {
        return orderService.updateOrder(id, orderEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        orderService.deleteOrder(id);
    }

    @GetMapping("/list")
    public Page<OrderEntity> findAll(@RequestParam("limit") int limit,
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
        return orderService.getOrder(pageable);
    }

}
