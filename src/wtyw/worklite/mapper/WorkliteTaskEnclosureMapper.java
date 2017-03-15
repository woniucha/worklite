package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteTaskEnclosure;

public class WorkliteTaskEnclosureMapper implements RowMapper<WorkliteTaskEnclosure> {
	

	public WorkliteTaskEnclosure mapRow(ResultSet rs, int rownum) throws SQLException {

		WorkliteTaskEnclosure worklitetaskenclosure=new WorkliteTaskEnclosure();
		worklitetaskenclosure.setTask_id(rs.getString(1));
		worklitetaskenclosure.setTask_upload_person(rs.getString(2));
		worklitetaskenclosure.setTask_upload_date(rs.getString(3));
		worklitetaskenclosure.setTask_file_name(rs.getString(4));
		worklitetaskenclosure.setTask_upload_person_role(rs.getString(5));
		worklitetaskenclosure.setTask_upload_person_id(rs.getString(6));
		worklitetaskenclosure.setTask_file_path(rs.getString(7));
		return worklitetaskenclosure;
    }
}
