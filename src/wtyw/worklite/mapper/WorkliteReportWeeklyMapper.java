package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteReportWeekly;

public class WorkliteReportWeeklyMapper implements RowMapper<WorkliteReportWeekly>{

	public WorkliteReportWeekly mapRow(ResultSet rs, int rownum)
			throws SQLException {

		WorkliteReportWeekly rw=new WorkliteReportWeekly();
		rw.setRw_id(rs.getString(1));
		rw.setRw_title(rs.getString(2));
		rw.setRw_system(rs.getString(3));
		rw.setRw_year(rs.getString(4));
		rw.setRw_cycle(rs.getString(5));
		rw.setRw_issue_person(rs.getString(6));
		rw.setRw_issue_date(rs.getString(7));
		rw.setRw_check_person(rs.getString(8));
		rw.setRw_status(rs.getString(9));
		rw.setRw_encloser(rs.getString(10));
		rw.setRw_check_suggest(rs.getString(11));
		rw.setRw_file_path(rs.getString(12));
		return rw;
	}
	

}
