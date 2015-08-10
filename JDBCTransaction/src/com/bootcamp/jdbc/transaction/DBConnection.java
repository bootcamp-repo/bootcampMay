package com.bootcamp.jdbc.transaction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Raj This class is where we are creating MYSQL database connection to
 *         be used by other class.
 *
 */
public class DBConnection {

	public final static String DB_DRIVER_CLASS = "com.mysql.jdbc.Driver";
	public final static String DB_URL = "jdbc:mysql://localhost:3306/test";
	public final static String DB_USERNAME = "root";
	public final static String DB_PASSWORD = "root";

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection con = null;

		// load the Driver Class
		Class.forName(DB_DRIVER_CLASS);

		// Create the connection now
		con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

		System.out.println("Db connection created successfully");

		return con;

	}

}
