package com.javabe.webshop.controller;

import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.model.EmailModel;
import com.javabe.webshop.service.EmailService;
import com.javabe.webshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/mail")
public class EmailController {
    @Autowired
    private EmailService emailService;

    @Autowired
    private UserService userService;

    @PostMapping("/send")
    public String sendMail(@RequestBody EmailModel emailModel) {
        emailService.sendMail(emailModel.getTo(), emailModel.getSubject(), emailModel.getBody());
        return emailModel.toString();
    }

    @PostMapping("/forgot")
    public String getPassWordMail(@RequestParam(value = "username") String username) {
        UserEntity userEntity = userService.findByUsername(username).get(0);
        emailService.sendMail(
                userEntity.getEmail(),
                "Webshop forgot password",
                "Đây là mật khẩu của bạn: " + userEntity.getPassword());
        return "mail to " + userEntity.getEmail();
    }

//    @PostMapping("/sendall")
//    public String sendMailAll() {
//        List<UserEntity> userEntity = userService.findAll();
//        emailService.sendMail(
//                userEntity.getEmail(),
//                "Webshop forgot password",
//                "Đây là mật khẩu của bạn: " + userEntity.getPassword());
//        return "mail to " + userEntity.getEmail();
//    }

//    @PostMapping("/send")
//    public String sendMail(@RequestParam(value = "file", required = false) MultipartFile[] file,
//                           String to,
//                           String[] cc,
//                           String subject,
//                           String body) {
//        return emailService.sendMail(to, subject, body);
//    }
}
