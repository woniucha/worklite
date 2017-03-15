package wtyw.worklite.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import wtyw.worklite.beans.WorkliteUserInfo;

public class WorkliteUserInfoMapper implements RowMapper<WorkliteUserInfo>{
	
	public WorkliteUserInfo mapRow(ResultSet rs, int rownum) throws SQLException {
		WorkliteUserInfo workliteuserinfo=new WorkliteUserInfo();
		workliteuserinfo.setUser_id(rs.getString(1));
		workliteuserinfo.setUser_name(rs.getString(2));
		workliteuserinfo.setUser_account(rs.getString(3));
		workliteuserinfo.setUser_pwd(rs.getString(4));
		workliteuserinfo.setUser_phone(rs.getString(5));
		workliteuserinfo.setUser_telephone(rs.getString(6));
		workliteuserinfo.setUser_mail(rs.getString(7));
		workliteuserinfo.setUser_address(rs.getString(8));
		workliteuserinfo.setUser_postcode(rs.getString(9));
		workliteuserinfo.setUser_identification(rs.getString(10));
		workliteuserinfo.setUser_birthday(rs.getString(11));
		workliteuserinfo.setUser_sex(rs.getString(12));
		workliteuserinfo.setUser_political(rs.getString(13));
		workliteuserinfo.setUser_nation(rs.getString(14));
		workliteuserinfo.setUser_place(rs.getString(15));
		workliteuserinfo.setUser_education(rs.getString(16));
		workliteuserinfo.setUser_specialty(rs.getString(17));
		workliteuserinfo.setUser_school(rs.getString(18));
		workliteuserinfo.setUser_graduate_age(rs.getString(19));
		workliteuserinfo.setUser_learnexp(rs.getString(20));
		workliteuserinfo.setUser_work_age(rs.getString(21));
		workliteuserinfo.setUser_experience(rs.getString(22));
		workliteuserinfo.setUser_skill(rs.getString(23));
		workliteuserinfo.setUser_interest(rs.getString(24));
		workliteuserinfo.setUser_corporation(rs.getString(25));
		workliteuserinfo.setUser_department(rs.getString(26));
		workliteuserinfo.setUser_deptphone(rs.getString(27));
		workliteuserinfo.setUser_project(rs.getString(28));
		workliteuserinfo.setUser_post(rs.getString(29));
		workliteuserinfo.setUser_poststart(rs.getString(30));
		workliteuserinfo.setUser_position(rs.getString(31));
		workliteuserinfo.setUser_project_manager(rs.getString(32));
		workliteuserinfo.setUser_project_manager_phone(rs.getString(33));
		workliteuserinfo.setUser_project_manager_mail(rs.getString(34));
		workliteuserinfo.setUser_project_inspector(rs.getString(35));
		workliteuserinfo.setUser_project_inspector_phone(rs.getString(36));
		workliteuserinfo.setUser_project_inspector_mail(rs.getString(37));
		workliteuserinfo.setUser_project_market(rs.getString(38));
		workliteuserinfo.setUser_project_market_phone(rs.getString(39));
		workliteuserinfo.setUser_project_market_mail(rs.getString(40));
		workliteuserinfo.setUser_status(rs.getString(41));
		workliteuserinfo.setUser_vacation(rs.getString(42));
		workliteuserinfo.setUser_already_day_num(rs.getString(43));
		workliteuserinfo.setUser_location(rs.getString(44));
		
		return workliteuserinfo;
	}


}
