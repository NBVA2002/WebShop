package com.javabe.webshop.service;

import com.javabe.webshop.entity.CategoryEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.model.FilterProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public interface CategoryService {
  CategoryEntity create(CategoryEntity categoryEntity);
  CategoryEntity update(Long id, CategoryEntity categoryEntity);
  void delete(Long id);
  Page<CategoryEntity> findAll(Long typeId, Pageable pageable);
  CategoryEntity findById(Long id);
}
