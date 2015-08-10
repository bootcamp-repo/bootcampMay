package com.mpn.bcStore.service;

import com.mpn.bcStore.dao.LoginDao;

import com.mpn.bcStore.model.User;
//login service class for user login
public class LoginService {

	public static boolean LoginService(User user)
	{   
		//creating logindao class instance object 
		LoginDao logindao = new LoginDao();
		//call to validateUserLoginInformation method of logindao class and return boolean value
		return logindao.validateUserLoginInformation(user);
		
	}
	
}
