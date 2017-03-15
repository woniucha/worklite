package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteRules;

public class WorkliteRulesMapper implements RowMapper<WorkliteRules>{

	public WorkliteRules mapRow(ResultSet rs, int rownum) throws SQLException {

		WorkliteRules rules = new WorkliteRules();
		rules.setRule_id(rs.getString(1));
		rules.setRule_detail(rs.getString(2));
		rules.setRemark1(rs.getString(3));
		rules.setRemark2(rs.getString(4));	
		return rules;
	}

}
