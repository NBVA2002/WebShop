package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.repository.OrderRepository;
import com.javabe.webshop.service.OrderService;
import com.javabe.webshop.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    @Autowired
    private final ProductService productService;

    @Autowired
    private final OrderRepository orderRepository;

    @Override
    public OrderEntity addOrder(UserEntity userEntity, OrderEntity orderEntity) {
        orderEntity.setUserInfoEntity(userEntity.getUserInfoEntity());
        orderEntity.setHasProcess(false);
        return orderRepository.save(orderEntity);
    }

    @Override
    public Page<OrderEntity> getOrder(Pageable pageable) {
        return null;
    }

    @Override
    public OrderEntity updateOrder(Long id, OrderEntity orderEntity) {
        orderEntity.setId(id);
        return orderRepository.save(orderEntity);
    }

    @Override
    public void deleteOrder(Long id) {

    }

    @Override
    public OrderEntity findById(Long id) {
        Optional<OrderEntity> order = orderRepository.findById(id);
        if (order.isEmpty()) {
            throw new RuntimeException();
        }
        return order.get();
    }

}
