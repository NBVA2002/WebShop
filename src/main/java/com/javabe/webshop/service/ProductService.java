package com.javabe.webshop.service;

import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.entity.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public interface ProductService {
  ProductEntity create(ProductEntity productEntity);
  ProductEntity update(Long id, ProductEntity productEntity);
  void delete(Long id);
  Page<ProductEntity> findAll(FilterProduct filterProduct, Pageable pageable);
  ProductEntity findById(Long id);
}
