package com.javabe.webshop.repository;

import com.javabe.webshop.entity.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Long>, JpaSpecificationExecutor<ProductEntity> {
//    @Query(value= "SELECT product2.id, product2.product_name, product2.price, product2.description, product2.gender, product2.rate, product2.num_evaluate " +
//            "FROM product2, type " +
//            "WHERE product2.id = type.pid AND type.name_type=:type"
//            , nativeQuery = true)
//    Page<ProductEntity> getByType(Pageable pageable, String type);
}