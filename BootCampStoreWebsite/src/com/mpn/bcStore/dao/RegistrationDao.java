package com.mpn.bcStore.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mpn.bcStore.model.User;
import com.mpn.bcStore.util.ConnectionManager;
import com.mpn.bcStore.util.LogDemo;
//RegistrationDao class
public class RegistrationDao {
	public static final Logger log = Logger.getLogger(LogDemo.class);

	static int updateStatus;
	//register user method 
	public static   boolean registerUser(User user) {
		// TODO Auto-generated method stub
		//connection  object from  connection manager class 
		Connection conn = ConnectionManager.getConnection();
		 System.out.println(conn);
		try {
			//create prepared statement 
			PreparedStatement stmt=conn.prepareStatement("insert into userinformation values(?,?,?,?,?,?,?,?)");
			//Set values in query using
			stmt.setString(1, user.getUserName());
			stmt.setString(2, user.getPassword());
			stmt.setString(3,user.getFirstName());
			stmt.setString(4, user.getLastName());
			stmt.setString(5, user.getPhoneNumber());
			stmt.setString(6, user.getGender());
			stmt.setString(7, user.getDate());
			stmt.setString(8, user.getComments());
			//execute executeUpadate  Query
			updateStatus= stmt.executeUpdate();
		
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log.error(e);
		} 
		finally
		{
			try {
				conn.close();//close connection
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				log.error(e);
				e.printStackTrace();
			}
		}
		//if query returns 1 return true
		if(updateStatus==1)
		{
		return true;
	    }
		
		//else return false
		else
		{
		return false;
		}
  }
}
