package com.javabe.webshop.repository;

import com.javabe.webshop.entity.TypeProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeProductRepository extends JpaRepository<TypeProductEntity, Integer>, JpaSpecificationExecutor<TypeProductEntity> {

}
