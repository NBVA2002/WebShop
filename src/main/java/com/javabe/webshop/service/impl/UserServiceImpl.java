package com.javabe.webshop.service.impl;

import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.entity.UserInfoEntity;
import com.javabe.webshop.repository.UserInfoRepository;
import com.javabe.webshop.repository.UserRepository;
import com.javabe.webshop.service.UserService;
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
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserInfoRepository userInfoRepository;

    @Override
    public UserEntity create(UserEntity userEntity) {
        if (userEntity != null) {
            UserInfoEntity userInfoEntity = new UserInfoEntity();
            userInfoEntity.setFirstName(userEntity.getFirstName());
            userInfoEntity.setLastName(userEntity.getLastName());
            userInfoRepository.save(userInfoEntity);
            userEntity.setUserInfoEntity(userInfoEntity);
            return userRepository.save(userEntity);
        }
        return null;
    }

    @Override
    public UserEntity update(Long id, UserEntity userEntity) {
        userEntity.setId(id);
        return userRepository.save(userEntity);
    }

    @Override
    public void delete(Long id) {
        UserEntity userEntity = userRepository.getById(id);
        if (userRepository != null) {
            if (userEntity != null) {
                userRepository.delete(userEntity);
            }
        }
    }

    @Override
    public Page<UserEntity> findAll(Pageable pageable) {
        return userRepository.findAll(pageable);
    }

    @Override
    public UserEntity findById(Long id) {
        Optional<UserEntity> product = userRepository.findById(id);
        if (product.isEmpty()) {
            throw new RuntimeException();
        }
        return product.get();
    }

    @Override
    public List<UserEntity> findByUsername(String username) {
        Specification<UserEntity> specification = ((root, query, criteriaBuilder)
                -> criteriaBuilder.equal(root.get("username"), username));
        return userRepository.findAll(specification);
    }

    @Override
    public int totalItem() {
        return (int) userRepository.count();
    }
}
