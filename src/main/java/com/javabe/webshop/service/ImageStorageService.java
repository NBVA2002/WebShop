package com.javabe.webshop.service;

import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Path;
import java.util.stream.Stream;

public interface ImageStorageService {
    public String storeFile(MultipartFile file);
    public Stream<Path> loadAll();
    public byte[] readFileContent(String fileName);
    public void deleteAllFile();
}
