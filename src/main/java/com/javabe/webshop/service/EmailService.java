package com.javabe.webshop.service;

public interface EmailService {
//    String sendMail(MultipartFile[] file, String to, String[] cc, String subject, String body);
    String sendMail(String to, String subject, String body);
}
