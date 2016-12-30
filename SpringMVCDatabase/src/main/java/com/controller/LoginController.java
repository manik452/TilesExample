package com.controller;

import com.interceptors.SessionData;
import com.service.RegistrationService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by saif23 on 11/8/2016.
 */
@Controller
public class LoginController {

    @Autowired
    RegistrationService registrationService;

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    SessionData sessionData;

    private static String INDEX_VIEW = "welcome";

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String helloPage(Model model) {



        // model.addAttribute("login", new Login());
        return INDEX_VIEW;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String getUserNamePassword(Model model) {

       // model.addAttribute("login", new Login());
        return "index";
    }

    /*@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String postUserNamePassword(@ModelAttribute Login login, Model model) {

        
        Registration registrationObject = registrationService.getUser(login.getUsername());
        if ((registrationObject.getUsername().equals(login.getUsername())) &&
                (registrationObject.getUserpassword().equals(login.getUserpassword()))) {

            User user = new User();
            user.setName(login.getUsername());
            user.setId((long)registrationObject.getID());
            sessionData.setUser(user);

            return "redirect:/user/pblog";
        }
        model.addAttribute("errormessage", "Incorrect Password and username");
        return "redirect:/login";
    }*/

    @RequestMapping(value = "/loginFailed", method = RequestMethod.GET)
    public String loginFailed(Model model) {
        model.addAttribute("error", "true");
        return "index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model) {
        model.addAttribute("logoutsuccessfull","You Log out SuccessFully");
        return INDEX_VIEW;
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String error403(Model model) {
        return "403";
    }
/*

    @RequestMapping("/user/logout")
    public String logout(HttpSession session) {
        sessionData.setUser(null); //sessionData = null causes NPE in next login
        session.invalidate();
        return "redirect:/login";
    }*/
}
