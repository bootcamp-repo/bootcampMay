package com.bootcamp.Jdbctemplate.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bootcamp.Jdbctemplate.example.Employee;

public class Test {
	 public static void main( String[] args )
	    {
	    	ApplicationContext context = 
	    		new ClassPathXmlApplicationContext("Spring-Module.xml");
	    	 
	        EmployeeDAO  employeeDAO = (EmployeeDAO) context.getBean("employeeDAO");
	        Employee employee = new  Employee(565944, "sailesh",27);
	        employeeDAO.insert(employee);
	    	
	        Employee employee1 =  employeeDAO.findById(5474);
	        System.out.println( employee1);
	        
	    }
}
