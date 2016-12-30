package com.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by saif23 on 11/27/2016.
 */
@Entity
@Table(name = "EMPLOYEE_TABLE")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String first_name;

    @Column
    private String last_name;

    @Column
    private double salary;

    @Column
    private long employeeId;

    @DateTimeFormat(pattern="dd/MM/yyyy")
    @Column
    private Date birthDate;


    @ManyToOne(cascade =CascadeType.ALL)
    @JoinColumn(name="department_id",nullable = false)
    private Department department;

    public Employee(String first_name,String last_name, double salary, long employeeId, Date birthDate) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.salary = salary;
        this.employeeId = employeeId;
        this.birthDate = birthDate;
        this.department = department;
    }

    public Employee() {
    }

    public int getId() {
        return id;
    }


    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public long getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(long employeeId) {
        this.employeeId = employeeId;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
