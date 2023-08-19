package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.entity.UserInfoEntity;
import com.javabe.webshop.repository.UserInfoRepository;
import com.javabe.webshop.repository.UserRepository;
import com.javabe.webshop.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Primary
@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoRepository userInfoRepository;

    @Override
    public UserInfoEntity create(UserInfoEntity userEntity) {
        if (userEntity != null) {
            return userInfoRepository.save(userEntity);
        }
        return null;
    }

    @Override
    public UserInfoEntity update(Long id, UserInfoEntity userEntity) {
        userEntity.setId(id);
        return userInfoRepository.save(userEntity);
    }

    @Override
    public void delete(Long id) {
        UserInfoEntity userEntity = userInfoRepository.getById(id);
        if (userInfoRepository != null) {
            if (userEntity != null) {
                userInfoRepository.delete(userEntity);
            }
        }
    }

    @Override
    public Page<UserInfoEntity> findAll(Pageable pageable) {
        return userInfoRepository.findAll(pageable);
    }

    @Override
    public UserInfoEntity findById(Long id) {
        Optional<UserInfoEntity> product = userInfoRepository.findById(id);
        if (product.isEmpty()) {
            throw new RuntimeException();
        }
        return product.get();
    }

    @Override
    public List<UserInfoEntity> findByUsername(String username) {
        Specification<UserInfoEntity> specification = ((root, query, criteriaBuilder)
                -> criteriaBuilder.equal(root.get("username"), username));
        return userInfoRepository.findAll(specification);
    }

    @Override
    public int totalItem() {
        return (int) userInfoRepository.count();
    }
}
