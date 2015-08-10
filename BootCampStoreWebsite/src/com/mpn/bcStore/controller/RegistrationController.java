package com.mpn.bcStore.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.mpn.bcStore.model.User;
import com.mpn.bcStore.service.RegistrationService;
import com.mpn.bcStore.util.LogDemo;
//RegistrationController class
public class RegistrationController extends HttpServlet
{
	public static final Logger log = Logger.getLogger(LogDemo.class);
protected void doPost(HttpServletRequest request,HttpServletResponse response ) throws ServletException,IOException
 {
	PrintWriter out = response.getWriter(); 
	//User class object
	User user = new User();
	//read values from jsp page and set values in user class  
	user.setUserName(request.getParameter("username"));
	user.setPassword(request.getParameter("password"));
	user.setFirstName(request.getParameter("firstname"));
	user.setLastName(request.getParameter("lastname"));
	user.setPhoneNumber(request.getParameter("phone"));
	user.setGender(request.getParameter("gender"));
	String day=request.getParameter("DOBDay");
	String month =request.getParameter("DOBMonth");
	String year =request.getParameter("DOBYear");
	String date = year+"/"+month+"/"+day;
	user.setDate(date);
	user.setComments(request.getParameter("comment"));
	//pass user class object to RegistrationService method and check if it return true
	RegistrationService rs = new RegistrationService();
	if(rs.registerUser(user))
	{   //set attribute user
		log.info("Registration complete");
		log.info("forwarding to welcome.jsp");
		request.setAttribute("user",user.getUserName());
	    //call to forward method for redirecting to welcome.jsp 
		RequestDispatcher rd = request.getRequestDispatcher("/Jsp/Welcome.jsp");
		rd.forward(request, response);
	}
	//if it returns false
	else
	{   ////Set attribute for error message  
		log.info("Registration unsuccessful redirecting to register.jsp");
		request.setAttribute("errorMessage","UserName already exists please try again");
		//include register.jsp page using request dispatcher
		RequestDispatcher rd = request.getRequestDispatcher("/Jsp/register.jsp");
		rd.include(request, response);	
	}
	
 }
}
