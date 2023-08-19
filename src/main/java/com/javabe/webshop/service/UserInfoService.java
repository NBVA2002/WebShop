package com.javabe.webshop.service;

import com.javabe.webshop.entity.UserInfoEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserInfoService {
    UserInfoEntity create(UserInfoEntity userInfoEntity);
    UserInfoEntity update(Long id, UserInfoEntity userInfoEntity);
    void delete(Long id);
    Page<UserInfoEntity> findAll(Pageable pageable);
    UserInfoEntity findById(Long id);
    List<UserInfoEntity> findByUsername(String username);

    int totalItem();
}
