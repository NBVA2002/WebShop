package com.javabe.webshop.repository;

import com.javabe.webshop.entity.CartItemEntity;
import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.entity.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface CartItemRepository extends JpaRepository<CartItemEntity, Long>, JpaSpecificationExecutor<CartItemEntity> {

}