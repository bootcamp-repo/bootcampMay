package com.mpn.bcStore.util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

public class ConnectionManager
{
	public static final Logger log = Logger.getLogger(LogDemo.class);
public static Connection getConnection()
{
	Context ctx = null;
	Hashtable ht = new Hashtable();
	ht.put(Context.INITIAL_CONTEXT_FACTORY,"weblogic.jndi.WLInitialContextFactory");
	ht.put(Context.PROVIDER_URL, "t3://localhost:7001");

	Connection conn = null;
	

	try {
		ctx = new InitialContext(ht);
		DataSource ds = (DataSource) ctx.lookup("jdbc/bootcamp");
		conn =  ds.getConnection();
	}
	catch(Exception e)
	{
		log.warn("can't connect to data source");
	}
return conn;
}


}