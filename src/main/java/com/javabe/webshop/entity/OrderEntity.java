package com.javabe.webshop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.util.List;
@Entity
@Table(name = "order_list")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_info")
    private UserInfoEntity userInfoEntity;

    @Column(name = "total_price")
    private double totalPrice;

    private boolean hasProcess;

    private Date orderDate;

    @OneToMany(mappedBy = "orderEntity", cascade = CascadeType.ALL)
    List<CartItemEntity> cartItemEntity;
}
