package com.nhom36.milkPowder.services;

import javax.servlet.http.Part;
import java.nio.file.Path;

public class ImagePathService {
public static String getPart(Part part, String path, String id) {
    Path folderImage = Path.of(path);
    if (!folderImage.toFile().exists()) {
        folderImage.toFile().mkdirs();
    }
    return id + "." + part.getSubmittedFileName().substring(part.getSubmittedFileName().lastIndexOf(".") + 1);
}
}
