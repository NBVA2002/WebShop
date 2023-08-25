package com.javabe.webshop.controller;

import com.javabe.webshop.entity.ImageEntity;
import com.javabe.webshop.service.ImageService;
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

    @Autowired
    private ImageService imageService;

    @PostMapping("/upload")
    public String addFile(@RequestParam("file")MultipartFile file,@RequestParam("pid") Long idProduct) {
        try {
            String generateFileName = imageStorageService.storeFile(file);
            ImageEntity imageEntity = new ImageEntity();
            imageEntity.setImgURL(generateFileName);
            imageService.addImage(idProduct, imageEntity);
            return generateFileName;
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
