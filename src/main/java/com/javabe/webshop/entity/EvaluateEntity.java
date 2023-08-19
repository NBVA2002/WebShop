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
@Table(name = "evaluate")
public class EvaluateEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private double rate;
    private String comment;
    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "pid")
    private ProductEntity productEntity;

    @OneToOne // Đánh dấu có mỗi quan hệ 1-1 với Person ở phía dưới
    @JoinColumn(name = "uid") // Liên kết với nhau qua khóa ngoại person_id
    private UserInfoEntity userInfoEntity;

    @Override
    public String toString() {
        return "EvaluateEntity{" +
                "id=" + id +
                ", rate=" + rate +
                ", comment='" + comment + '\'' +
                ", productEntity=" + productEntity +
                '}';
    }
}
