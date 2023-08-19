package com.javabe.webshop.controller;

import com.javabe.webshop.entity.CartItemEntity;
import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.security.jwt.JwtAuthenticationFilter;
import com.javabe.webshop.security.jwt.JwtTokenProvider;
import com.javabe.webshop.service.CartItemService;
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
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartItemController {

    @Autowired
    private final CartItemService cartItemService;

    @PostMapping("/create/{id}")
    public CartItemEntity addEvaluate(@PathVariable("id") Long orderId,
                                   @RequestParam("pid") Long pid,
                                   @RequestBody CartItemEntity cartItemEntity) {
        return cartItemService.addCartItem(orderId, pid, cartItemEntity);
    }

    @PutMapping("/update")
    public CartItemEntity update(@PathVariable("id") Long id,
                                 @RequestBody CartItemEntity cartItemEntity) {
        return cartItemService.updateCartItem(id, cartItemEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        cartItemService.deleteCartItem(id);
    }

    @GetMapping("/list")
    public Page<CartItemEntity> findAll(@RequestParam("limit") int limit,
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
        return cartItemService.getCartItem(pageable);
    }

}
