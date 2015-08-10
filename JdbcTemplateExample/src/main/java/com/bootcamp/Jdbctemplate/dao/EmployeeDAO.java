package com.bootcamp.Jdbctemplate.dao;

import com.bootcamp.Jdbctemplate.example.Employee;

public interface EmployeeDAO 
{
public void insert(Employee employee);
public Employee findById(int id);
}
