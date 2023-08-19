package com.javabe.webshop;

import aj.org.objectweb.asm.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.javabe.webshop.entity.ProductEntity;
import com.javabe.webshop.repository.ProductRepository;
import com.javabe.webshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.List;

@SpringBootApplication
public class WebShopApplication implements CommandLineRunner {
    public static void main(String[] args) {
        SpringApplication.run(WebShopApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
//        for(int i = 70; i <= 81; i++) {
//            System.out.println("('Quần','" + i + "'),");
//        }
    }
//    INSERT INTO `type` (`name_type`, `pid`) VALUE
}
