package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.CartItemEntity;
import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.repository.CartItemRepository;
import com.javabe.webshop.repository.OrderRepository;
import com.javabe.webshop.service.CartItemService;
import com.javabe.webshop.service.OrderService;
import com.javabe.webshop.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private ProductService productService;

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private OrderService orderService;

    @Override
    public CartItemEntity addCartItem(Long orderId, Long idProduct, CartItemEntity cartItemEntity) {
        ProductEntity product = productService.findById(idProduct);
        OrderEntity orderEntity = orderService.findById(orderId);
        if (orderEntity != null && product != null) {
            cartItemEntity.setProductEntity(product);
            cartItemEntity.setOrderEntity(orderEntity);
            CartItemEntity result =  cartItemRepository.save(cartItemEntity);

            double total = 0;
            for (CartItemEntity cartItem : orderEntity.getCartItemEntity()) {
                total += cartItem.getProductEntity().getPrice() * cartItem.getQuantity();
            }
            orderEntity.setTotalPrice(total);
            orderService.updateOrder(orderId,orderEntity);

            int numOrder = 0;
            for (CartItemEntity cartItem : cartItemRepository.findAll()) {
                if(cartItem.getProductEntity().getId().equals(idProduct)){
                    numOrder += cartItem.getQuantity();
                }
            }
            product.setNumOrder(numOrder);
            productService.update(idProduct, product);
            return result;
        }
        return null;
    }

    @Override
    public Page<CartItemEntity> getCartItem(Pageable pageable) {
        return null;
    }

    @Override
    public CartItemEntity updateCartItem(Long id, CartItemEntity cartItemEntity) {
        cartItemEntity.setId(id);
        return cartItemRepository.save(cartItemEntity);
    }

    @Override
    public void deleteCartItem(Long id) {

    }

}
