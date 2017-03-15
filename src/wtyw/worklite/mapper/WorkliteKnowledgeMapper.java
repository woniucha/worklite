package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteKnowledge;
public class WorkliteKnowledgeMapper implements RowMapper<WorkliteKnowledge>{

		public WorkliteKnowledge mapRow(ResultSet rs, int rownum) throws SQLException {
			WorkliteKnowledge workliteknowledge=new WorkliteKnowledge();
			workliteknowledge.setKl_id(rs.getString(1));
			workliteknowledge.setKl_title(rs.getString(2));
			workliteknowledge.setKl_system(rs.getString(3));
			workliteknowledge.setKl_system_alias(rs.getString(4));
			workliteknowledge.setKl_commit_time(rs.getString(5));
			workliteknowledge.setKl_commit_person(rs.getString(6));
			workliteknowledge.setKl_check_time(rs.getString(7));
			workliteknowledge.setKl_check_person(rs.getString(8));
			workliteknowledge.setKl_appearance(rs.getString(9));
			workliteknowledge.setKl_reason(rs.getString(10));
			workliteknowledge.setKl_solution(rs.getString(11));
			workliteknowledge.setKl_operate_program(rs.getString(12));
			workliteknowledge.setKl_reply_strategy(rs.getString(13));
			workliteknowledge.setKl_sample(rs.getString(14));
			workliteknowledge.setKl_comment(rs.getString(15));
			workliteknowledge.setKl_status(rs.getString(16));
			workliteknowledge.setKl_enviroment(rs.getString(17));
			workliteknowledge.setKl_check_suggest(rs.getString(18));
			workliteknowledge.setKl_check_frequency(rs.getString(19));
			workliteknowledge.setKl_priority(rs.getString(20));
			return workliteknowledge;
}
}