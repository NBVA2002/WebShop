package com.javabe.webshop.model;

import com.javabe.webshop.entity.CategoryEntity;
import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.entity.TypeProductEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDAO {

    private String productName;

    private CategoryEntity category;

    private int price;

    private String gender;

    private String description;

    private List<TypeProductEntity> typeProductEntities;

    private List<ImageEntity> imageEntities;

}
