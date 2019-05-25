package com.models;

import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class User {
	
	public String login(String userN, String passW) {
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String userNameDB = "";
		String passwordDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = (ResultSet) statement.executeQuery("select nameUsers, passUsers from paf");
			
			while(resultSet.next()) {
				userNameDB = resultSet.getString("nameUsers");
				passwordDB = resultSet.getString("passUsers");
				
				if(userN.contentEquals(userNameDB) && passW.contentEquals(passwordDB)) {
					return "SUCCESS"; 
				}
			}
		}
	
	catch (SQLException e) {
		e.printStackTrace();
	}
	
	return "Invalid user credentials...";
}
}
