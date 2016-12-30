package com.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by saif23 on 11/27/2016.
 */
@Entity
@Table(name = "DEPARTMENT_TABLE")
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long department_id;

    @Column
    private String departmentName;

    public Department(String departmentName) {
        this.departmentName = departmentName;
    }

    public Department() {
    }

    public long getDepartment_id() {
        return department_id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }



}
