package beans;

import java.sql.*;

public class DBManager {
	private static final String DRIVER_CLASS="com.mysql.jdbc.Driver";
	private static final String CONN_STR="jdbc:mysql://localhost:3306/javaweb";
	private static final String USER_NAME="root";
	private static final String PASSWORD="Tbc991228";
	
	public static Connection getConnection(){
		Connection conn=null;
		
		try {
			Class.forName(DRIVER_CLASS);
			System.out.println("驱动加载");
			
			conn=DriverManager.getConnection(CONN_STR,USER_NAME,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
	}

}
