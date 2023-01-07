package com.nhom36.milkPowder.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

public class UploadFileHelper {
    public static String uploadFile(String uploadDir, HttpServletRequest request, String name, String id) throws ServletException, IOException {

        Part part = request.getPart(name);


        String fileName = getFileName(part);
        if (fileName == null || fileName.equals("")) {
            return "";
        }
        fileName = id + ".jpg";
        System.out.println(fileName);
        String application = request.getServletContext().getRealPath("");
        File tomcatFolder = new File(application + File.separator + uploadDir);
        File projectFolder = new File(Define.projectPath + File.separator + uploadDir);
        if (!tomcatFolder.exists()) tomcatFolder.mkdirs();
        if (!projectFolder.exists()) projectFolder.mkdirs();

        System.out.println(projectFolder.getAbsolutePath());

        String filePath = tomcatFolder.getAbsolutePath() + File.separator + fileName;
        part.write(filePath);
        String detinastionPath = projectFolder.getAbsolutePath() + File.separator + fileName;
        Files.copy(new File(filePath).toPath(), new File(detinastionPath).toPath(), StandardCopyOption.REPLACE_EXISTING);


        return uploadDir + File.separator + fileName;
    }

    private static String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
