package com.javabe.webshop.service;

import com.javabe.webshop.entity.CartItemEntity;
import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public interface CartItemService {
  CartItemEntity addCartItem(Long orderId, Long idProduct, CartItemEntity cartItemEntity);
  Page<CartItemEntity> getCartItem(Pageable pageable);
  CartItemEntity updateCartItem(Long id, CartItemEntity cartItemEntity);
  void deleteCartItem(Long id);
}
