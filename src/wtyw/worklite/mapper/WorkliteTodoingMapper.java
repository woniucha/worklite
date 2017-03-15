package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteTodoing;

public class WorkliteTodoingMapper implements RowMapper<WorkliteTodoing> {
	public WorkliteTodoing mapRow(ResultSet rs, int rownum) throws SQLException {
		
		WorkliteTodoing worklitetodoing = new WorkliteTodoing();
		worklitetodoing.setWd_id(rs.getString(1));
		worklitetodoing.setWd_title(rs.getString(2));
		worklitetodoing.setWd_type(rs.getString(3));
		worklitetodoing.setWd_date(rs.getString(4));
		worklitetodoing.setWd_person(rs.getString(5));
		worklitetodoing.setWd_priority(rs.getString(6));
		return worklitetodoing;
}
}
