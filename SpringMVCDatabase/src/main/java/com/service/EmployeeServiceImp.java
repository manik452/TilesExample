package com.service;

import com.model.Employee;
import com.repository.EmployeeDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by saif23 on 11/27/2016.
 */
@Service
@Transactional
public class EmployeeServiceImp implements EmployeeService {


    @Autowired
    EmployeeDao employeeDao;

    @Override
    public void addEmployee(Employee employee) {
       employeeDao.addEmployee(employee);

    }
}
