package com.javabe.webshop.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "product2")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String productName;

    private int price;

    private String description;

    private String gender;

    private double rate;

    @Column(name = "num_evaluate")
    private int numEvaluate;

    @Column(name = "num_order")
    private int numOrder;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL)
    private List<TypeProductEntity> typeProductEntities;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL)
    private List<ImageEntity> imageEntities;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL)
    private List<EvaluateEntity> evaluateEntities;

}
