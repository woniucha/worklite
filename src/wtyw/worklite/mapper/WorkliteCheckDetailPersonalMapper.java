package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteCheckDetailPersonal;

/*
 * AUTHOR chenzhujun
 * 2016.03.20
 */
public class WorkliteCheckDetailPersonalMapper implements RowMapper<WorkliteCheckDetailPersonal> {
	public WorkliteCheckDetailPersonal mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteCheckDetailPersonal worklitecheckdetailpersonal = new WorkliteCheckDetailPersonal();
		worklitecheckdetailpersonal.setCheck_project_institution(rs.getString(1));
		worklitecheckdetailpersonal.setCheck_project(rs.getString(2));
		worklitecheckdetailpersonal.setCheck_name(rs.getString(3));
		worklitecheckdetailpersonal.setCheck_identification(rs.getString(4));
		worklitecheckdetailpersonal.setCheck_owner_institution(rs.getString(5));
		worklitecheckdetailpersonal.setCheck_date(rs.getString(6));
		worklitecheckdetailpersonal.setCheck_type(rs.getString(7));
		worklitecheckdetailpersonal.setCheck_begin_time(rs.getString(8));
		worklitecheckdetailpersonal.setCheck_end_time(rs.getString(9));
		worklitecheckdetailpersonal.setCheck_classes(rs.getString(10));
		worklitecheckdetailpersonal.setCheck_personal_date(rs.getString(11));
		return worklitecheckdetailpersonal;
	}
}
