package com.controller;

import com.model.Department;
import com.model.Employee;
import com.service.EmployeeService;
import org.apache.commons.io.FilenameUtils;
import org.omg.CORBA.Context;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * Created by saif23 on 11/27/2016.
 */
@Controller
public class ManyToOneController {


    @Autowired
    EmployeeService employeeService;

    @Autowired
    private ServletContext servletContext;

   /* @RequestMapping(name = "/mto",method = RequestMethod.GET)
    public String getManyToOne(Map<String,Object>map, Model model, HttpServletRequest request){



        java.sql.Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
        java.sql.Date date = new java.sql.Date(timeStamp.getTime());
        System.out.print(date);

        *//* model.addAttribute("today", new SimpleDateFormat("dd/MM/yyyy").format(new Date()));

       *//**//* map.put("employee" , new Employee());
        map.put("department" , new Department());*//**//*
       Date date = new Date();
        Employee employee = new Employee();

         employee=new Employee("manik","sarker",500.00,00001,date);
        Department department = new Department("JAVA");

        employee.setDepartment(department);

        employeeService.addEmployee(employee);*//*

        return "manytoone";
    }*/


}
