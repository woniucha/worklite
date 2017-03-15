package wtyw.worklite.test;

import java.sql.*;


public class DbUtilOracle {

	private PreparedStatement pstmt = null;

	private Connection con = null;
	
    private static String driver = "oracle.jdbc.driver.OracleDriver";
    private static String url = "jdbc:oracle:thin:@localhost:1521:nlstest";
    private static String user = "worklite";
    private static String password = "admin";

	public DbUtilOracle() {
		try {
		 Class.forName(driver);
         con=DriverManager.getConnection(url, user, password);
		 } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	public Connection getCon() {
		return con;
	}

	public void close() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
