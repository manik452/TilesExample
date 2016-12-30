package com.controller;

import com.interceptors.SessionData;
import com.model.Registration;
import com.model.User;
import com.model.UserBlog;
import com.service.RegistrationService;
import com.service.UserBlogService;
import com.sun.tracing.dtrace.Attributes;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by saif23 on 11/21/2016.
 */
@Controller
public class BlogController {


    @Autowired
    private UserBlogService userBlogService;

    @Autowired
    SessionData sessionData;

    @Autowired
    RegistrationService registrationService;

    @RequestMapping(value = "/user/pblog", method = RequestMethod.GET)
    public String getBlog(Map<String, Object> map, Model model) {

        Registration registration = new Registration();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();


        registration = registrationService.getUser(name);


        UserBlog userBlog = new UserBlog();
        map.put("blogList", userBlogService.getPost(registration.getID()));
        map.put("registrationObject",registration);
       // map.put("name", sessionData.getUser().getName());
        return "Blog";
    }
}
