package com.service;

import com.model.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Created by saif23 on 11/28/2016.
 */
public class SecurityContextAuthenticationName {

    @Autowired
    RegistrationService registrationService;

    public Registration getAuthenticationObject(){
        Registration registration =new Registration();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();

        registration=registrationService.getUser(name);

        return registration;
    }
}
