package com.bootcamp.lunch.util;

import java.net.InetAddress;
import java.net.UnknownHostException;


public class AdminUtil {
	

	/**
	 * This class validates the IP Address of the user
	 * <br>
	 * Only 192168382   
	 */
	public  boolean isAdmin() {
		try {
			String ipAddress = InetAddress.getLocalHost().toString().replaceAll("[^0-9]","");
			System.out.println(ipAddress);
			if (ipAddress.trim().equals("192168016")) {
				System.out.println("Welcome Sweekar!");
				return true;
			}else{
				System.out.println("Sorry this page is not for you! Please exit now");
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return false;
	}

}
