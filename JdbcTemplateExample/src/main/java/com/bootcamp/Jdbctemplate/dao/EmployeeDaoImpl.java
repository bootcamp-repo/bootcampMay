package com.bootcamp.Jdbctemplate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.bootcamp.Jdbctemplate.example.Employee;

public class EmployeeDaoImpl implements EmployeeDAO{
	 private DataSource dataSource;
	 public void setDataSource(DataSource dataSource) {
		
		         this.dataSource = dataSource;
		
		     }

	public void insert(Employee employee) {
		// TODO Auto-generated method stub
		
		 String sql = "INSERT INTO employee " + "(id, empNAME, age) VALUES (?, ?, ?)";
	     Connection conn = null;
	     try {
	    	
	    	             conn = dataSource.getConnection();
	    	
	    	             PreparedStatement ps = conn.prepareStatement(sql);
	    	
	    	             ps.setInt(1,employee.getId());
	    
	    	             ps.setString(2, employee.getName());
	    	
	    	             ps.setInt(3, employee.getAge());
	    	
	    	             ps.executeUpdate();
	    	
	    	             ps.close();
	    
	    	   
	    	
	    	         } catch (SQLException e) {
	    		             throw new RuntimeException(e);
	    	
	    	   
	    	
	    	         } finally {
	    	
	    	             if (conn != null) {
	    	
	    	                 try {
	    	
	    	                     conn.close();
	    
	    	                 } catch (SQLException e) {}
	    	
	    	             }
	    	 
	    	         }


	}

	public Employee findById(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM EMPLOYEE WHERE ID = ?";
		        Connection conn = null;
		        try {
		
		            conn = dataSource.getConnection();
		
		            PreparedStatement ps = conn.prepareStatement(sql);
		
		            ps.setInt(1, id);
		
		            Employee employee = null;
		
		            ResultSet rs = ps.executeQuery();
		
		            if (rs.next()) {
		
		                employee = new Employee(rs.getInt("id"),rs.getString("empName"), rs.getInt("age"));
	
		            }
	
		            rs.close();
		
		            ps.close();
		
		            return employee;
		
		        } catch (SQLException e) {
		
		            throw new RuntimeException(e);
		
		        } finally {
		
		            if (conn != null) {
		
		                try {
		
		                conn.close();
		
		                } catch (SQLException e) {}
		
		            }
		
		        }
	
		    }

	}


