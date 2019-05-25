package com.models;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;

public class DBConnection {
	
	public static Connection createConnection() {
		
		Connection con = null;
		String url ="jdb:mysql://localhost:3306/studentdb"; //MySQL URL and fo1
		String username = "root"; //MySQL username
		String password = "root"; //MySQL password
		
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver
			}
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			con = (Connection) DriverManager.getConnection(url, username, password); //attempt
			System.out.println("Print connection object "+con);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}

}
