package com.javabe.webshop.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "user")
@Data
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false, unique = true)
    private String email;

    private String password;

    private String roles;

    private String firstName;

    private String lastName;

    private String phone;

    private String address;

    @OneToOne // Đánh dấu có mỗi quan hệ 1-1 với Person ở phía dưới
    @JoinColumn(name = "uid_inf") // Liên kết với nhau qua khóa ngoại person_id
    private UserInfoEntity userInfoEntity;
}
