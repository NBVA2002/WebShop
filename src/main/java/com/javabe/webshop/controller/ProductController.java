package com.javabe.webshop.controller;

import com.javabe.webshop.entity.TypeProductEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.model.ProductDAO;
import com.javabe.webshop.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {
    @Autowired
    private final ProductService productService;

    @PostMapping("/create")
    public ProductEntity create(@RequestBody ProductDAO productDAO) {
        ProductEntity productEntity = new ProductEntity();
        productEntity.setProductName(productDAO.getProductName());
        productEntity.setPrice(productDAO.getPrice());
        productEntity.setGender(productDAO.getGender());
        productEntity.setDescription(productDAO.getDescription());
        productEntity.setGender(productDAO.getGender());
        productEntity.setCategory(productDAO.getCategory());
        return productService.create(productEntity);
    }

    @PutMapping("/update/{id}")
    public ProductEntity update(@RequestBody ProductDAO productDAO, @PathVariable("id") Long id) {
        ProductEntity productEntity = new ProductEntity();
        productEntity.setProductName(productDAO.getProductName());
        productEntity.setPrice(productDAO.getPrice());
        productEntity.setGender(productDAO.getGender());
        productEntity.setDescription(productDAO.getDescription());
        productEntity.setGender(productDAO.getGender());
        productEntity.setCategory(productDAO.getCategory());
        return productService.update(id, productEntity);
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable("id") Long id) {
        productService.delete(id);
    }

    @GetMapping("/list")
    public Page<ProductEntity> findAll(@RequestParam("search") String search,
                                       @RequestParam("gender") String gender,
                                       @RequestParam("categorytype") Long categoryType,
                                       @RequestParam("category") Long categoryID,
                                       @RequestParam("type") String type,
                                       @RequestParam("rate") int rate,
                                       @RequestParam("pricegt") int priceGT,
                                       @RequestParam("pricelt") int priceLT,
                                       @RequestParam("limit") int limit,
                                       @RequestParam("page") int page,
                                       @RequestParam("sortby") String sortBy,
                                       @RequestParam("sort") String sort) {
        Pageable pageable = null;
        if (!sortBy.equals("")) {
            if (sort.equals("desc")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Sort.Direction.DESC, sortBy));
            } else if (sort.equals("asc")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Sort.Direction.ASC, sortBy));
            }
        } else {
            pageable = PageRequest.of(page - 1, limit);
        }

        FilterProduct filter = new FilterProduct(search, priceGT, priceLT, gender, rate, categoryType, categoryID, type);
        System.out.println(filter);
        return productService.findAll(filter, pageable);
    }

    @GetMapping("/list/{id}")
    public ProductEntity findById(@PathVariable("id") Long id) {
        return productService.findById(id);
    }

}
