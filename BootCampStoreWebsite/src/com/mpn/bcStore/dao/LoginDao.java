package com.mpn.bcStore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.log4j.Logger;

import com.mpn.bcStore.model.User;
import com.mpn.bcStore.util.ConnectionManager;
import com.mpn.bcStore.util.LogDemo;
//LoginDao class
public class LoginDao {
	boolean result;
	public static final Logger log = Logger.getLogger(LogDemo.class);
	//method
	public boolean validateUserLoginInformation(User user) {
		// TODO Auto-generated method stub
		
		ResultSet rs =null;
		String pwd=null;
		//connection object from connectionManager class
		Connection conn = ConnectionManager.getConnection();
		 System.out.println(conn);
		 /*
		 System.out.println(user.getUserName());
		 System.out.println(user.getPassword());*/
		 try 
		 {
			 /*String name = user.getUserName();*/
			 //Sql Query
			 String query="select password from userinformation where userName=?";
			 //Create prepared Statement
			PreparedStatement pstmt = conn.prepareStatement(query); 
			//Set username value in the Query
			pstmt.setString(1, user.getUserName());
			//store the result in the result set after executing the query 
			rs = pstmt.executeQuery();
			//validate password from database with user password
			while(rs.next()){
				pwd =rs.getString(1);
				
			}
			
		 }
		 catch (SQLException e) 
		 {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				log.error(e);
			} 
		 finally
		 {
			 try {
				conn.close();//close connection
			} catch (SQLException e) 
			 {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e);
			}
		 }
		//validate password from database with user password
			if(pwd.equalsIgnoreCase(user.getPassword()))
			 {
			     result = true;
			    
			 }
			 
			 else
			 {
				 result =false;
				
			 }
		System.out.println(result);
		return result;
	
}
}
