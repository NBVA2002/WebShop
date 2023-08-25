package com.javabe.webshop.controller;

import com.javabe.webshop.entity.CategoryEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/category")
@RequiredArgsConstructor
public class CategoryController {
    @Autowired
    private final CategoryService categoryService;

    @PostMapping("/create")
    public CategoryEntity create(@RequestBody CategoryEntity categoryEntity) {
        return categoryService.create(categoryEntity);
    }

    @PutMapping("/update")
    public CategoryEntity update(@RequestBody CategoryEntity categoryEntity, @PathVariable("id") Long id) {
        return categoryService.update(id, categoryEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        categoryService.delete(id);
    }

    @GetMapping("/list")
    public Page<CategoryEntity> findAll(@RequestParam("type") Long typeId,
                                        @RequestParam("limit") int limit,
                                        @RequestParam("page") int page) {
        Pageable pageable = PageRequest.of(page - 1, limit);
        return categoryService.findAll(typeId, pageable);
    }

    @GetMapping("/list/{id}")
    public CategoryEntity findById(@PathVariable("id") Long id) {
        return categoryService.findById(id);
    }

}
