package com.javabe.webshop.repository;

import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.entity.UserInfoEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInfoRepository extends JpaRepository<UserInfoEntity, Long>, JpaSpecificationExecutor<UserInfoEntity> {
}