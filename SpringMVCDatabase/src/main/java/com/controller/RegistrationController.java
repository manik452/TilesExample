package com.controller;

import com.model.Registration;
import com.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by saif23 on 11/21/2016.
 */
@Controller
public class RegistrationController {


    @Autowired
    private RegistrationService rew;

    @RequestMapping(value = "/registration")
    public String getUserNamePassword(Map<String, Object> map) {
        Registration registration = new Registration();
        map.put("registration", new Registration());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String postUserNamePassword(@ModelAttribute Registration registration, BindingResult result, Map<String, Object> map, Model model) {
        if (result.hasErrors()) {
            return "registration";
        }

        System.out.println("Successfull");
        model.addAttribute("name", registration.getFirstname());

        rew.add(registration);

        model.addAttribute("name", registration.getUsername());
        return "welcome";
    }
}
