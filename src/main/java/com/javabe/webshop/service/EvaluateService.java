package com.javabe.webshop.service;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.model.FilterProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public interface EvaluateService {
  EvaluateEntity addEvaluate(Long idProduct, UserEntity userEntity, EvaluateEntity evaluateEntity);
  EvaluateEntity updateEvaluate(Long id, EvaluateEntity evaluateEntity);
  void deleteEvaluate(Long id);
  Page<EvaluateEntity> findAll(Pageable pageable);
}
