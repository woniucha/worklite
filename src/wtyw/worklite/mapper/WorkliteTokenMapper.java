package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteToken;

/*
 * AUTHOR ³Â×£¾ü
 * 2016.01.26
 */
public class WorkliteTokenMapper implements RowMapper<WorkliteToken> {


	public WorkliteToken mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteToken worklitetoken=new WorkliteToken();
		worklitetoken.setToken_id(rs.getString(1));
		worklitetoken.setToken_uass_name(rs.getString(2));
		worklitetoken.setToken_pwd(rs.getString(3));
		worklitetoken.setToken_pin(rs.getString(4));
		worklitetoken.setToken_location(rs.getString(5));
		worklitetoken.setToken_reg_time(rs.getString(6));
		worklitetoken.setToken_owner(rs.getString(7));
		worklitetoken.setToken_office(rs.getString(8));
		worklitetoken.setToken_remarks(rs.getString(9));
		worklitetoken.setToken_status(rs.getString(10));
		worklitetoken.setToken_root(rs.getString(11));
		worklitetoken.setToken_system(rs.getString(12));
		worklitetoken.setToken_no(rs.getString(13));
		worklitetoken.setToken_phone(rs.getString(14));
		worklitetoken.setToken_request(rs.getString(15));
		worklitetoken.setToken_logout(rs.getString(16));
		return worklitetoken;
	}

}
