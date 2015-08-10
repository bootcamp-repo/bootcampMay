package com.mpn.bcStore.service;

import java.util.Calendar;

import com.mpn.bcStore.dao.RegistrationDao;
import com.mpn.bcStore.model.User;
//RegistrationService  class
public class RegistrationService 
{
   //register user method
	public static boolean registerUser(User user)
	{
		// TODO Auto-generated method stub
		//create RegistrationDao class object instance
		RegistrationDao registerdao = new RegistrationDao();
		//return boolean value  if call to registerdao class method with user class object  returns boolean value
		 return RegistrationDao.registerUser(user);	
	}
}
