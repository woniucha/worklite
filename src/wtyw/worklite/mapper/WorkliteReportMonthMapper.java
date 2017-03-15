package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wtyw.worklite.beans.WorkliteReportMonth;

public class WorkliteReportMonthMapper implements RowMapper<WorkliteReportMonth>{

	public WorkliteReportMonth mapRow(ResultSet rs, int rownum)
			throws SQLException {

		WorkliteReportMonth rm=new WorkliteReportMonth();
		rm.setRm_id(rs.getString(1));
		rm.setRm_title(rs.getString(2));
		rm.setRm_year(rs.getString(3));
		rm.setRm_issue(rs.getString(4));
		rm.setRm_issue_person(rs.getString(5));
		rm.setRm_issue_date(rs.getString(6));
		rm.setRm_check_person(rs.getString(7));
		rm.setRm_status(rs.getString(8));
		rm.setRm_remark3(rs.getString(9));
		rm.setRm_check_suggest(rs.getString(10));
		rm.setRm_file_path(rs.getString(11));
		return rm;
	}

}
