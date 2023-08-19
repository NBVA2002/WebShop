package com.javabe.webshop.service;

import com.javabe.webshop.entity.EvaluateEntity;
import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.model.FilterProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public interface ImageService {
  ImageEntity addImage(Long idProduct, ImageEntity imageEntity);
  ImageEntity updateImage(Long id, ImageEntity imageEntity);
  void deleteImage(Long id);
}
