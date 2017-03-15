package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteBook;;

/*
 * AUTHOR ÐìÏþ¶«
 * 2016.01.26
 */
public class WorkliteBookMapper implements RowMapper<WorkliteBook> {


	public WorkliteBook mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteBook worklitebook=new WorkliteBook();
		worklitebook.setBook_id(rs.getString(1));
		worklitebook.setBook_name(rs.getString(2));
		worklitebook.setBook_writer(rs.getString(3));
		worklitebook.setBook_press(rs.getString(4));
		worklitebook.setBook_price(rs.getString(5));
		worklitebook.setBook_disk(rs.getString(6));
		worklitebook.setBook_savetime(rs.getString(7));
		worklitebook.setBook_status(rs.getString(8));
		return worklitebook;
	}

}
