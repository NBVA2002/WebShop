package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.entity.UserInfoEntity;
import com.javabe.webshop.repository.OrderRepository;
import com.javabe.webshop.service.OrderService;
import com.javabe.webshop.service.ProductService;
import jakarta.persistence.criteria.Join;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.sql.Date;
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
        orderEntity.setOrderDate(new java.sql.Date(System.currentTimeMillis()));
        orderEntity.setHasProcess(false);
        return orderRepository.save(orderEntity);
    }

    @Override
    public Page<OrderEntity> getOrder(Pageable pageable) {
        return orderRepository.findAll(pageable);
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

    @Override
    public Page<OrderEntity> getOrderByUID(Long id, Pageable pageable) {
//        Optional<OrderEntity> order = orderRepository.findById(id);
//        if (order.isEmpty()) {
//            throw new RuntimeException();
//        }
        Specification<OrderEntity> specification = ((root, query, criteriaBuilder) -> {
            Join<OrderEntity, UserInfoEntity> userInfo = root.join("userInfoEntity");
            return criteriaBuilder.equal(userInfo.get("id"), id);
        });

        return orderRepository.findAll(specification, pageable);
    }

    @Override
    public List<OrderEntity> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public List<OrderEntity> getListOrderByDate(Date fromDate, Date toDate) {
        Specification<OrderEntity> specification = ((root, query, criteriaBuilder)
                -> criteriaBuilder.greaterThanOrEqualTo(root.get("orderDate"), fromDate));
        specification = specification.and(((root, query, criteriaBuilder)
                -> criteriaBuilder.lessThanOrEqualTo(root.get("orderDate"), toDate)));
        return orderRepository.findAll(specification);
    }
}
