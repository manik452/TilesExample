package com.controller;

import com.interceptors.SessionData;
import com.model.Registration;
import com.model.UserBlog;
import com.service.RegistrationService;
import com.service.UserBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by saif23 on 11/22/2016.
 */
@Controller
public class PostBlogController {

    @Autowired
    UserBlogService userBlogService;

    @Autowired
    SessionData sessionData;

   @Autowired
   RegistrationService registrationService;

    @RequestMapping(value = "/user/postyourblog", method = RequestMethod.GET)
    public String getPostBlog(Model model) {

        Registration registration =new Registration();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();

        registration= registrationService.getUser(name);

        model.addAttribute("UserBlog", new UserBlog());
        model.addAttribute("registrationObj", registration);

        System.out.println("get your Blog");
        return "postblog";
    }

    @RequestMapping(value = "/user/postyourblog", method = RequestMethod.POST)
    public String postPostBlog(@ModelAttribute UserBlog userBlog, Model model ) {

        Date date = new Date();
        System.out.println(date);

        Registration registration =new Registration();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        registration= registrationService.getUser(name);
        
        userBlog.setUser_id((long)registration.getID());
        userBlog.setDate(date);

        System.out.println(userBlog.getCommentID() + " " + userBlog.getDescriptionOfComment());
        userBlogService.addBlog(userBlog);
        System.out.println("Post your Blog");
        return "redirect:/user/pblog";
    }
}
