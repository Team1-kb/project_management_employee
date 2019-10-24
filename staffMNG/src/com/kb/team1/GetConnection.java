package com.kb.team1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetConnection {

	static Connection conn = null;
		
	public static Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id ="teamwork";
		String pw ="1234";	
	 try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
     } catch (ClassNotFoundException e) {
         e.printStackTrace();
     }
     try {
         conn = DriverManager.getConnection(url, id, pw);
         System.out.println("¼º°ø");
     } catch (Exception e) {
         e.printStackTrace();
     }
     return conn;
 }
}
