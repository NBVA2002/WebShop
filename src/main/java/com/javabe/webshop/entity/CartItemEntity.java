package com.javabe.webshop.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
@Entity
@Table(name = "cart_item")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartItemEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne // Đánh dấu có mỗi quan hệ 1-1 với Person ở phía dưới
    @JoinColumn(name = "pid") // Liên kết với nhau qua khóa ngoại person_id
    private ProductEntity productEntity;

    private String size;

    private int quantity;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "oid")
    private OrderEntity orderEntity;
}
