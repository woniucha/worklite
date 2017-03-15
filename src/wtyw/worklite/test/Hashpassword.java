package wtyw.worklite.test;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import wtyw.worklite.beans.*;
import wtyw.worklite.util.PasswordHash;

public class Hashpassword {
	

	
	public static void main(String arg[]) throws NoSuchAlgorithmException, InvalidKeySpecException {
	

	PreparedStatement pstmt = null;
	
	DbUtilOracle dbo = new DbUtilOracle();

	String sql = null;
	ResultSet rs = null;
	try {
		sql = "select * from worklite_user_login";
		pstmt = dbo.getCon().prepareStatement(sql);
		rs = pstmt.executeQuery();
        while(rs.next())
        {
        	System.out.println("‘≠√‹¬Î"+rs.getString("user_pwd"));
        	WorkliteUserLogin wul = new WorkliteUserLogin();
        	wul.setUser_pwd(PasswordHash.createHash(rs.getString("user_pwd")));
        	wul.setUser_id(rs.getString("user_id"));
        	System.out.println("–¬√‹¬Î"+wul.getUser_pwd());
        	//String sql1 = "update worklite_user_login set user_pwd =? where user_id=? ";
        	//PreparedStatement pstmt1 = null;
        	//pstmt1 = dbo.getCon().prepareStatement(sql1);
        	//pstmt1.setString(1, wul.getUser_pwd());
        	//pstmt1.setString(2, wul.getUser_id());
        	//pstmt1.executeUpdate();
        	//pstmt1.close();
        }

		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			pstmt.close();
			dbo.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	

}

	
	

}
