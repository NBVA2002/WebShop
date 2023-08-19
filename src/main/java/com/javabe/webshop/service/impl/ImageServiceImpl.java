package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.repository.ImageRepository;
import com.javabe.webshop.service.ImageService;
import com.javabe.webshop.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ImageServiceImpl implements ImageService {

    @Autowired
    private final ProductService productService;

    @Autowired
    private final ImageRepository imageRepository;

    @Override
    public ImageEntity addImage(Long idProduct, ImageEntity imageEntity) {
        ProductEntity product = productService.findById(idProduct);
        if (imageEntity != null && product != null) {
            imageEntity.setProductEntity(product);
            return imageRepository.save(imageEntity);
        }
        return null;
    }

    @Override
    public ImageEntity updateImage(Long id, ImageEntity imageEntity) {
        imageEntity.setId(id);
        return imageRepository.save(imageEntity);
    }

    @Override
    public void deleteImage(Long id) {
        ImageEntity imageEntity = imageRepository.getById(id);
        imageRepository.delete(imageEntity);
    }
}
