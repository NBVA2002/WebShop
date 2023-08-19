package com.javabe.webshop.repository;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.ImageEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageRepository extends JpaRepository<ImageEntity, Long>, JpaSpecificationExecutor<ImageEntity> {

}
