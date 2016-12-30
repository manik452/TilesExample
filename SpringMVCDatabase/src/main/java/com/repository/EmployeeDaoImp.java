package com.repository;

import com.model.Employee;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by saif23 on 11/27/2016.
 */
@Repository
public class EmployeeDaoImp implements EmployeeDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void addEmployee(Employee employee) {
        sessionFactory.getCurrentSession().save(employee);
    }
}
