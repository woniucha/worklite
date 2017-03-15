package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteUserLogin;

public class WorkliteUserLoginMapper implements RowMapper<WorkliteUserLogin>{

	public WorkliteUserLogin mapRow(ResultSet rs, int rownum) throws SQLException {

		WorkliteUserLogin workliteuserlogin=new WorkliteUserLogin();
		workliteuserlogin.setUser_id(rs.getString(1));
		workliteuserlogin.setUser_name(rs.getString(2));
		workliteuserlogin.setUser_uass_name(rs.getString(3));
		workliteuserlogin.setUser_pwd(rs.getString(4));
		workliteuserlogin.setUser_reg_date(rs.getString(5));
		workliteuserlogin.setUser_cancel_date(rs.getString(6));
		workliteuserlogin.setUser_login_frequency(rs.getString(7));
		workliteuserlogin.setUser_nearly_login_date(rs.getString(8));
		workliteuserlogin.setUser_status(rs.getString(9));
		return workliteuserlogin;
    }
}