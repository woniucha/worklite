package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteTask;

public class WorkliteTaskMapper implements RowMapper<WorkliteTask>{
	
	public WorkliteTask mapRow(ResultSet rs, int rownum) throws SQLException {
		
		WorkliteTask worklitetask = new WorkliteTask();
		worklitetask.setTask_id(rs.getString(1));
		worklitetask.setTask_title(rs.getString(2));
		worklitetask.setTask_type(rs.getString(3));
		worklitetask.setTask_begin_date(rs.getString(4));
		worklitetask.setTask_end_date(rs.getString(5));
		worklitetask.setTask_issue_date(rs.getString(6));
		worklitetask.setTask_issue_person(rs.getString(7));
		worklitetask.setTask_issue_person_id(rs.getString(8));
		worklitetask.setTask_priority(rs.getString(9));
		worklitetask.setTask_desc(rs.getString(10));
		worklitetask.setTask_status(rs.getString(11));
		worklitetask.setTask_complete_date(rs.getString(12));
		return worklitetask;
		
}
}