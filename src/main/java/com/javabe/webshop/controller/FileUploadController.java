package com.javabe.webshop.controller;

import com.javabe.webshop.service.ImageStorageService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/file")
@RequiredArgsConstructor
public class FileUploadController {

    @Autowired
    private ImageStorageService imageStorageService;

    @PostMapping("/upload")
    public String addEvaluate(@RequestParam("file")MultipartFile file) {
        try {
            String generateFileName = imageStorageService.storeFile(file);
            return "Upload file successfully";
        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @GetMapping("/{fileName:.+}")
    public ResponseEntity<byte[]> readDetailFile(@PathVariable String fileName) {
        try {
            byte[] bytes = imageStorageService.readFileContent(fileName);
            return ResponseEntity
                    .ok()
                    .contentType(MediaType.IMAGE_JPEG)
                    .body(bytes);

        } catch (Exception e) {
            return ResponseEntity.noContent().build();
        }
    }

}
