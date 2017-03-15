package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteTaskHandler;

public class WorkliteTaskHandlerMapper implements RowMapper<WorkliteTaskHandler> {
	
	public WorkliteTaskHandler mapRow(ResultSet rs, int rownum) throws SQLException {
		
		WorkliteTaskHandler worklitetaskhandler=new WorkliteTaskHandler();
		worklitetaskhandler.setTask_id(rs.getString(1));
		worklitetaskhandler.setTask_handler(rs.getString(2));
		worklitetaskhandler.setTask_handler_id(rs.getString(3));
		worklitetaskhandler.setTask_handler_opinion(rs.getString(4));
		worklitetaskhandler.setTask_handle_date(rs.getString(5));
		worklitetaskhandler.setTask_handle_status(rs.getString(6));
		worklitetaskhandler.setTask_handle_estimate(rs.getString(7));
		worklitetaskhandler.setTask_handle_estimate_score(rs.getString(8));
		return worklitetaskhandler;
    }
}
