package com.javabe.webshop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "category_type")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryTypeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "category_type")
    private String categoryType;
}
