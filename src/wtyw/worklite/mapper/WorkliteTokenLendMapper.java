package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteTokenLend;

public class WorkliteTokenLendMapper implements RowMapper<WorkliteTokenLend> {


	public WorkliteTokenLend mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteTokenLend worklitetokenlend=new WorkliteTokenLend();
		worklitetokenlend.setToken_id(rs.getString(1));
		worklitetokenlend.setUser_name(rs.getString(2));
		worklitetokenlend.setUse_time(rs.getString(3));
		worklitetokenlend.setFfang_name(rs.getString(4));
		worklitetokenlend.setBack_time(rs.getString(5));
		worklitetokenlend.setBacker_name(rs.getString(6));
		worklitetokenlend.setRk_name(rs.getString(7));
		worklitetokenlend.setLend_id(rs.getString(8));
		worklitetokenlend.setLend_status(rs.getString(9));
		return worklitetokenlend;
	}
}
