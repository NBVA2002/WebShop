package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.CategoryEntity;
import com.javabe.webshop.entity.CategoryTypeEntity;
import com.javabe.webshop.entity.TypeProductEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.repository.ProductRepository;
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
public class ProductServiceImpl implements ProductService {
    @Autowired
    private final ProductRepository productRepository;

    @Autowired
    private CategoryService categoryService;

    @Override
    public ProductEntity create(ProductEntity productEntity) {
        if (productEntity != null) {
            return productRepository.save(productEntity);
        }
        return null;
    }

    @Override
    public ProductEntity update(Long id, ProductEntity productEntity) {
        productEntity.setId(id);
        return productRepository.save(productEntity);
    }

    @Override
    public Page<ProductEntity> findAll(FilterProduct filterProduct, Pageable pageable) {
        Specification<ProductEntity> specification = ((root, query, criteriaBuilder)
                -> criteriaBuilder.like(root.get("productName"), "%" + filterProduct.getSearch() + "%"));
        specification = specification.or(((root, query, criteriaBuilder)
                -> criteriaBuilder.like(root.get("description"), "%" + filterProduct.getSearch() + "%")));

        if (filterProduct.getGender() != "") {
            specification = specification.and(((root, query, criteriaBuilder)
                    -> criteriaBuilder.equal(root.get("gender"), filterProduct.getGender())));
        }

        if (filterProduct.getType() != "") {
            specification = specification.and((root, query, criteriaBuilder) -> {
                Join<TypeProductEntity, ProductEntity> typeProduct = root.join("typeProductEntities");
                return criteriaBuilder.equal(typeProduct.get("nameType"), filterProduct.getType());
            });
        }

        if (filterProduct.getCategoryType() != 0) {
            specification = specification.and((root, query, criteriaBuilder) -> {
                Join<CategoryEntity, ProductEntity> category = root.join("category");
                Join<CategoryTypeEntity, CategoryEntity> categoryType = category.join("categoryType");
                return criteriaBuilder.equal(categoryType.get("id"), filterProduct.getCategoryType());
            });
        }

        if (filterProduct.getCategoryID() != 0) {
            specification = specification.and((root, query, criteriaBuilder) -> {
                Join<CategoryEntity, ProductEntity> category = root.join("category");
                return criteriaBuilder.equal(category.get("id"), filterProduct.getCategoryID());
            });
        }

        specification = specification.and(((root, query, criteriaBuilder)
                -> criteriaBuilder.greaterThanOrEqualTo(root.get("price"), filterProduct.getPriceGT())));

        specification = specification.and(((root, query, criteriaBuilder)
                -> criteriaBuilder.greaterThanOrEqualTo(root.get("rate"), filterProduct.getRate())));

        if (filterProduct.getPriceLT() > 0) {
            specification = specification.and(((root, query, criteriaBuilder)
                    -> criteriaBuilder.lessThanOrEqualTo(root.get("price"), filterProduct.getPriceLT())));
        }

        return productRepository.findAll(specification, pageable);
    }

    @Override
    public void delete(Long id) {
        ProductEntity product = findById(id);
        if (productRepository != null) {
            if (product != null) {
                productRepository.delete(product);
            }
        }
    }

    @Override
    public ProductEntity findById(Long id) {
        Optional<ProductEntity> product = productRepository.findById(id);
        if (product.isEmpty()) {
            throw new RuntimeException();
        }
        return product.get();
    }

}