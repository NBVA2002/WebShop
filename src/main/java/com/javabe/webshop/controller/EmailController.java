package com.javabe.webshop.controller;

import com.javabe.webshop.entity.OrderEntity;
import com.javabe.webshop.entity.UserEntity;
import com.javabe.webshop.entity.UserInfoEntity;
import com.javabe.webshop.model.EmailModel;
import com.javabe.webshop.model.login.LoginRequest;
import com.javabe.webshop.model.login.LoginResponse;
import com.javabe.webshop.service.EmailService;
import com.javabe.webshop.service.OrderService;
import com.javabe.webshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/mail")
public class EmailController {
    @Autowired
    private EmailService emailService;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @PostMapping("/send")
    public String sendMail(@RequestBody EmailModel emailModel) {
        emailService.sendMail(emailModel.getTo(), emailModel.getSubject(), emailModel.getBody());
        return emailModel.toString();
    }

    @PostMapping("/forgot")
    public String getPassWordMail(@RequestParam(value = "username") String username) {
        UserEntity userEntity = userService.findByUsername(username).get(0);

        RestTemplate restTemplate = new RestTemplate();
        String url = "http://localhost:8081/api/login";
        LoginRequest loginRequest = new LoginRequest(username,userEntity.getPassword());
        ResponseEntity<LoginResponse> entity = restTemplate.postForEntity(url, loginRequest,LoginResponse.class);
//        System.out.println(entity.getBody().getJwt());

        emailService.sendMail(
                userEntity.getEmail(),
                "Webshop forgot password",
                "Nhập vào đường link để đổi mật khẩu của bạn: http://localhost:8080/change/"
                        + entity.getBody().getJwt());
        return "mail to " + userEntity.getEmail();
    }

    @PostMapping("/success/{oid}")
    public String sendSuccessMail(@PathVariable(value = "oid") Long oid) {
        OrderEntity orderEntity = orderService.findById(oid);
        UserInfoEntity userInfoEntity = orderEntity.getUserInfoEntity();
        UserEntity userEntity = userService.findById(userInfoEntity.getId());
        emailService.sendMail(
                userEntity.getEmail(),
                "Xác nhận đơn hàng",
                "Đơn hàng của bạn đã được xác nhận thành công: \n"
                        + "Tên khách hàng: " + userEntity.getFirstName() + " " + userEntity.getLastName() + "\n"
                        + "Số điện thoại: " + userEntity.getPhone() + "\n"
                        + "Địa chỉ: " + userEntity.getAddress() + "\n"
                        + "Ngày đặt hàng: " + orderEntity.getOrderDate() + "\n"
                +   "Tổng tiền: " + orderEntity.getTotalPrice() + "đ");
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
