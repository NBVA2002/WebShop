package com.javabe.webshop.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "collection")
public class TypeProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "collection_name")
    private String nameType;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "pid")
    private ProductEntity productEntity;
}
