package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;

/**
 * Created by saif23 on 11/24/2016.
 */
@Controller
public class ImageUploadController {

    @Autowired
    ServletContext servletContext;

    @RequestMapping(value = "/imageup")
    public String getImage(Model model) {
        return "imageupload";
    }

    @RequestMapping(value = "/imageup", method = RequestMethod.POST)
    public String postImage(@RequestParam(value = "image", required = false) MultipartFile image) throws IOException {


        String saveDirectory = "D:\\Blog\\SpringMVCDatabase\\src\\main\\webapp\\WEB-INF\\image\\";

        String destinationPath=servletContext.getRealPath("/WEB-INF/image");
        destinationPath+="/";

        /*java.sql.Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
        java.sql.Date date = new java.sql.Date(timeStamp.getTime());
*/
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());



        String timest= Long.toString(timestamp.getTime());
       /* image.getName();
        image.getContentType();*/
        timest.concat(image.getOriginalFilename());

        timest=timest+image.getOriginalFilename();

        String fileName = image.getOriginalFilename();
        image.transferTo(new File(destinationPath + timest));
        System.out.println("timest " + timest);
        System.out.println("destinationpath " + destinationPath);

        return "imageupload";
    }
}
