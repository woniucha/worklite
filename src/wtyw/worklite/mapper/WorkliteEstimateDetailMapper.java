package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteEstimateDetail;

public class WorkliteEstimateDetailMapper implements RowMapper<WorkliteEstimateDetail>{


	public WorkliteEstimateDetail mapRow(ResultSet rs, int rownum)throws SQLException {
		
		WorkliteEstimateDetail estimate=new WorkliteEstimateDetail();
		estimate.setTask_id(rs.getString(1));
		estimate.setUser_id(rs.getString(2));
		estimate.setEstimate_id(rs.getString(3));
		estimate.setEstimate_detail(rs.getString(4));
		estimate.setMark1(rs.getString(5));
		estimate.setMark2(rs.getString(6));
		return estimate;
	}
}
