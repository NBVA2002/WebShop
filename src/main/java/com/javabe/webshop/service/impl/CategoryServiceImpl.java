package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.CategoryEntity;
import com.javabe.webshop.entity.CategoryTypeEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.TypeProductEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.repository.CategoryRepository;
import com.javabe.webshop.service.CategoryService;
import com.javabe.webshop.service.ProductService;
import jakarta.persistence.criteria.Join;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private final CategoryRepository categoryRepository;

    @Override
    public CategoryEntity create(CategoryEntity categoryEntity) {
        if (categoryEntity != null) {
            return categoryRepository.save(categoryEntity);
        }
        return null;
    }

    @Override
    public CategoryEntity update(Long id, CategoryEntity category) {
        category.setId(id);
        return categoryRepository.save(category);
    }

    @Override
    public Page<CategoryEntity> findAll(Long typeId, Pageable pageable) {
        if (typeId != 0) {
            Specification<CategoryEntity> specification = ((root, query, criteriaBuilder) -> {
                Join<CategoryTypeEntity, CategoryEntity> categoryType = root.join("categoryType");
                return criteriaBuilder.equal(categoryType.get("id"), typeId);
            });
            return categoryRepository.findAll(specification, pageable);
        }
        return categoryRepository.findAll(pageable);
    }

    @Override
    public void delete(Long id) {
        CategoryEntity category = categoryRepository.getById(id);
        if (categoryRepository != null) {
            if (category != null) {
                categoryRepository.delete(category);
            }
        }
    }

    @Override
    public CategoryEntity findById(Long id) {
        return categoryRepository.getById(id);
    }

}