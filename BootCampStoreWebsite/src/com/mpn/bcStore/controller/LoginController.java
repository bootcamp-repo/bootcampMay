package com.mpn.bcStore.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.mpn.bcStore.util.*;
import com.mpn.bcStore.model.User;
import com.mpn.bcStore.service.LoginService;


//Login controller for user login
public class LoginController extends HttpServlet
{
	public static final Logger log = Logger.getLogger(LogDemo.class);
	public void doPost(HttpServletRequest request,HttpServletResponse response ) throws ServletException,IOException
	{
		
		
		PrintWriter out = response.getWriter();
		//instance object for user class
		User user = new User();
		//reading values and storing in user class
		user.setUserName(request.getParameter("Email"));
		user.setPassword(request.getParameter("password"));
	
		
		//if call login service returns true forwards to product.jsp
		if(LoginService.LoginService(user))
		{ //sets attribute username 
			log.info("Successful login");
			request.setAttribute("user",user.getUserName()); 
			//requestdispatcher for forward method
			RequestDispatcher rd = request.getRequestDispatcher("/Jsp/product.jsp");
			rd.forward(request, response);	
		}
		//if call to login service method returns false it includes to login.jsp
		else
		{   
			log.info("Login unsuccessful");
			log.info("please provide valid login credentials");
			//sets attribute for error message
			request.setAttribute("errorMessage","Please provide valid Credentials");
			//requestdispatcher for include method
			RequestDispatcher rd = request.getRequestDispatcher("/Jsp/login.jsp");
			rd.include(request, response);
		}
		
	}
}
