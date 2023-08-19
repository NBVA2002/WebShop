package com.javabe.webshop.repository;

import com.javabe.webshop.entity.EvaluateEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface EvaluateRepository extends JpaRepository<EvaluateEntity, Long>, JpaSpecificationExecutor<EvaluateEntity> {

}
