package com.javabe.webshop.service.impl;

import com.javabe.webshop.service.EmailService;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
    @Value("${spring.mail.username}")
    private String fromEmail;

    @Autowired
    private JavaMailSender javaMailSender;

    @Override
    @Async
//    public String sendMail(MultipartFile[] file, String to, String[] cc, String subject, String body) {
    public String sendMail(String to, String subject, String body) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "utf-8");

            mimeMessageHelper.setFrom(fromEmail);
            mimeMessageHelper.setTo(to);
//            mimeMessageHelper.setCc(cc);
            mimeMessageHelper.setSubject(subject);
            mimeMessageHelper.setText(body);

//            for (int i = 0; i < file.length; i++) {
//                mimeMessageHelper.addAttachment(file[i].getOriginalFilename(),
//                        new ByteArrayResource(file[i].getBytes()));
//            }
            javaMailSender.send(mimeMessage);
            return "mail send";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
