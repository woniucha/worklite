package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteVacation;

public class WorkliteVacationMapper implements RowMapper<WorkliteVacation>{
	
	public WorkliteVacation mapRow(ResultSet rs, int rownum) throws SQLException {
		
		WorkliteVacation worklitevacation=new WorkliteVacation();
		
		worklitevacation.setVacation_id(rs.getString(1));
		worklitevacation.setVacation_title(rs.getString(2));
		worklitevacation.setVacation_priority(rs.getString(3));
		worklitevacation.setVacation_person(rs.getString(4));
		worklitevacation.setVacation_post(rs.getString(5));
		worklitevacation.setVacation_project(rs.getString(6));
		worklitevacation.setVacation_corporation(rs.getString(7));
		worklitevacation.setVacation_corporation_verify(rs.getString(8));
		worklitevacation.setVacation_bank_verify(rs.getString(9));
		worklitevacation.setVacation_type(rs.getString(10));
		worklitevacation.setVacation_day_num(rs.getString(11));
		worklitevacation.setVacation_startdate(rs.getString(12));
		worklitevacation.setVacation_enddate(rs.getString(13));
		worklitevacation.setVacation_already_day_num(rs.getString(14));
		worklitevacation.setVacation_reason(rs.getString(15));
		worklitevacation.setVacation_commitdate(rs.getString(16));
		worklitevacation.setVacation_corpopinion(rs.getString(17));
		worklitevacation.setVacation_corpdate(rs.getString(18));
		worklitevacation.setVacation_bankopinion(rs.getString(19));
		worklitevacation.setVacation_bankdate(rs.getString(20));
		worklitevacation.setVacation_status(rs.getString(21));
		worklitevacation.setVacation_userid(rs.getString(22));
		return worklitevacation;
		}
}
