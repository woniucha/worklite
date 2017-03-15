package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteBookBor;
/*
 * AUTHOR ÐìÏþ¶«
 * 2016.01.26
 */
public class WorkliteBookBroMapper implements RowMapper<WorkliteBookBor> {


	public WorkliteBookBor mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteBookBor worklitebookbor=new WorkliteBookBor();
		worklitebookbor.setBook_registerid(rs.getString(1));
		worklitebookbor.setBook_id(rs.getString(2));
		worklitebookbor.setBook_name(rs.getString(3));
		worklitebookbor.setBook_borrowtime(rs.getString(4));
		worklitebookbor.setBook_returntime(rs.getString(5));
		worklitebookbor.setBook_borrowp(rs.getString(6));
		worklitebookbor.setBook_returnp(rs.getString(7));
		worklitebookbor.setLend_status(rs.getString(8));
		return worklitebookbor;
	}

}
