package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.model.FilterProduct;
import com.javabe.webshop.repository.EvaluateRepository;
import com.javabe.webshop.service.EvaluateService;
import com.javabe.webshop.service.ProductService;
import com.javabe.webshop.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class EvaluateServiceImpl implements EvaluateService {

    @Autowired
    private final EvaluateRepository evaluateRepository;

    @Autowired
    private ProductService productService;

    @Autowired
    UserService userService;

    @Override
    public EvaluateEntity addEvaluate(Long idProduct, UserEntity userEntity, EvaluateEntity evaluateEntity) {
        ProductEntity product = productService.findById(idProduct);
        if (evaluateEntity != null && product != null) {
            evaluateEntity.setProductEntity(product);
            evaluateEntity.setUserInfoEntity(userEntity.getUserInfoEntity());
            evaluateRepository.save(evaluateEntity);

            double sum = 0;
            for (EvaluateEntity e : product.getEvaluateEntities()) {
                sum += e.getRate();
            }

            double rate = sum / (product.getEvaluateEntities().size());
            product.setRate(rate);
            product.setNumEvaluate(product.getEvaluateEntities().size());
            productService.update(idProduct, product);
        }
        return evaluateEntity;
    }

    @Override
    public EvaluateEntity updateEvaluate(Long id, EvaluateEntity productEntity) {
        return null;
    }

    @Override
    public void deleteEvaluate(Long id) {

    }

    @Override
    public Page<EvaluateEntity> findAll(Pageable pageable) {
        return evaluateRepository.findAll(pageable);
    }


}
