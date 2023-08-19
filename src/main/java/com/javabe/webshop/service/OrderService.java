package com.javabe.webshop.service;

import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.UserEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
  OrderEntity addOrder(UserEntity userEntity, OrderEntity orderEntity);
  Page<OrderEntity> getOrder(Pageable pageable);
  OrderEntity updateOrder(Long id, OrderEntity orderEntity);
  void deleteOrder(Long id);
  OrderEntity findById(Long id);

}
