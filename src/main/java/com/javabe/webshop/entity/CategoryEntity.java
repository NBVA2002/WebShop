package com.javabe.webshop.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "category")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "category_type")
    private CategoryTypeEntity categoryType;

    @Column(name = "category_name")
    private String categoryName;
}
