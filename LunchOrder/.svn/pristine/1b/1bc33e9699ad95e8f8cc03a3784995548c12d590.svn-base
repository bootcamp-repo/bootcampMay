package com.bootcamp.lunch.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bootcamp.lunch.dao.LunchOrderDaoImpl;
import com.bootcamp.lunch.model.Chipotle;
import com.bootcamp.lunch.model.WhichWich;
import com.bootcamp.lunch.service.LunchOrderService;
import com.bootcamp.lunch.util.AdminUtil;
import com.bootcamp.lunch.util.LunchOrderUtil;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	WhichWich whichWich;
	Chipotle chipotle;
	LunchOrderDaoImpl dao = new LunchOrderDaoImpl();
	
	LunchOrderService lunchOrderService;
	public void setLunchOrderService(LunchOrderService lunchOrderService) {
		this.lunchOrderService = lunchOrderService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {
		logger.info("Home method called!!!");
		LunchOrderUtil util = new LunchOrderUtil();
		//getting the todays day and and lunch page from LunchOrderUtil class
		String lunchPage = util.getLunchDayPage();
		return lunchPage;//returning the toady's lunch page
	}
	
	@RequestMapping(value="/chipotle.do", method=RequestMethod.POST)
	public String getChipotleOrder(Chipotle chipotle, Model model){
		lunchOrderService.orderChipotle(chipotle);//Inserting chipotle order in the database
		
		//Checking if there is some error while inserting the data to the database
		if (dao.getErrMsg() == null) {
			
			ModelMap mv = new ModelMap();
			this.chipotle = chipotle;
			mv.addAttribute("chipotle",chipotle);
			return "redirect:/home";
		}else{
			//adding error message to the page
			model.addAttribute("errMsg", dao.getErrMsg().toUpperCase(Locale.US));//getting the error msg from the LunchOrderDaoImpl Class
			return "wednesdayLunch";
		}
		
	}
	
	@RequestMapping(value="/whichWich.do", method=RequestMethod.POST)
	public String getWichWichOrder(WhichWich whichWich, Model model){
		lunchOrderService.orderWhichWich(whichWich);//Inserting whichwich order in the database
		
		//Checking if there is some error while inserting the data to the database
		if (dao.getErrMsg() == null) {
			
			ModelMap mv = new ModelMap();
			this.whichWich = whichWich;
			mv.addAttribute("whichWich",whichWich);
			return "redirect:/home";
			
		}else{
			
			//adding error message to the page
			String errMsg = dao.getErrMsg();
			model.addAttribute("errMsg", errMsg.toUpperCase(Locale.US));//getting the error msg from the LunchOrderDaoImpl Class
			return "wednesdayLunch";
		}
		
	}
	
	
	/*This method returns the home page with the appropriate lunch data for the user so that they can see what they ordered*/
	   @RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String homePage(Model model) {
		   if (whichWich != null) {
			   model.addAttribute("whichWich", whichWich);
		}else{
			model.addAttribute("chipotle", chipotle);
		}
	      return "home";
	   }
	   
	   /*This is for the admin to view all the orders made for that day. 
	    * This page can be access only with this IP Address: 192.168.1.82
	    * */
	   @RequestMapping(value = "/admin", method = RequestMethod.GET)
	   public ModelAndView adminPage() {
		   AdminUtil au = new AdminUtil();
		   LunchOrderUtil lou = new LunchOrderUtil();
		   String lunchPage = lou.getLunchDayPage();
		   ModelAndView modelV = new ModelAndView("admin");
		   List<WhichWich> allWhichOrder = new ArrayList<WhichWich>();
		   List<Chipotle> allChipotleOrder = new ArrayList<Chipotle>();
		   //Validation of the user IP Address
		   if (au.isAdmin()) {
			   if (lunchPage.equals("wednesdayLunch")) {
				allWhichOrder = lunchOrderService.getAllWhichWichOrder();
				modelV.addObject("whichWich",allWhichOrder);
			}else if(lunchPage.equals("fridayLunch")){
				allChipotleOrder = lunchOrderService.getAllChipotleOrder();
				modelV.addObject("chipotle", allChipotleOrder);
			}
			return modelV;
		}
		   String errMsgAdmin = "Sorry! You are not admin...Please continue with your order...";
		   String lunchDay = lou.getLunchDayPage();
		   ModelMap outMsg = new ModelMap();
		   outMsg.addAttribute("errMsgAdmin",errMsgAdmin);
		   return new ModelAndView(lunchDay, outMsg);
	   }
	

}
