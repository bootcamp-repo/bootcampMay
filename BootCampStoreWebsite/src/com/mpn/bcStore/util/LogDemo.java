package com.mpn.bcStore.util;

import org.apache.log4j.Logger;

public class LogDemo {

	public static final Logger log = Logger.getLogger(LogDemo.class);
		
	
	public static void testLog4J(String name){
		
		
		if (log.isDebugEnabled()) {
			log.debug("This is debug message");
		}
	}

}
