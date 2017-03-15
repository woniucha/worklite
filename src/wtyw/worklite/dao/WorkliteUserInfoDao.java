package wtyw.worklite.dao;

/*
 * author 
 * 2016.01.27
 */

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import wtyw.worklite.util.PageModel;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.mapper.WorkliteUserInfoMapper;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteUserInfoDao {
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;
	private PageModel pageModel;

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}

	public void saveNew_Worklite_User_Info(WorkliteUserInfo workliteuserinfo) {

		String sql = "insert into worklite_user_info (USER_ID,USER_NAME,USER_ACCOUNT,USER_PWD,USER_PHONE,USER_TELEPHONE,USER_MAIL,USER_ADDRESS,USER_POSTCODE,USER_IDENTIFICATION,USER_BIRTHDAY,USER_SEX,USER_POLITICAL,USER_NATION,USER_PLACE,USER_EDUCATION,USER_SPECIALTY,USER_SCHOOL,USER_GRADUATE_AGE,USER_LEARNEXP,USER_WORK_AGE,USER_EXPERIENCE,USER_SKILL,USER_INTEREST,USER_CORPORATION,USER_DEPARTMENT,USER_DEPTPHONE,USER_PROJECT,USER_POST,USER_POSTSTART,USER_POSITION,USER_PROJECT_MANAGER,USER_PROJECT_MANAGER_PHONE,USER_PROJECT_MANAGER_MAIL,USER_PROJECT_INSPECTOR,USER_PROJECT_INSPECTOR_PHONE,USER_PROJECT_INSPECTOR_MAIL,USER_PROJECT_MARKET,USER_PROJECT_MARKET_PHONE,USER_PROJECT_MARKET_MAIL,USER_STATUS,USER_VACATION,USER_ALREADY_DAY_NUM) "
				+ "values"
				+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteuserinfo.getUser_id(),
				workliteuserinfo.getUser_name(), workliteuserinfo
						.getUser_account(), workliteuserinfo.getUser_pwd(),
				workliteuserinfo.getUser_phone(), workliteuserinfo
						.getUser_telephone(), workliteuserinfo.getUser_mail(),
				workliteuserinfo.getUser_address(), workliteuserinfo
						.getUser_postcode(), workliteuserinfo
						.getUser_identification(), workliteuserinfo
						.getUser_birthday(), workliteuserinfo.getUser_sex(),
				workliteuserinfo.getUser_political(), workliteuserinfo
						.getUser_nation(), workliteuserinfo.getUser_place(),
				workliteuserinfo.getUser_education(), workliteuserinfo
						.getUser_specialty(),
				workliteuserinfo.getUser_school(), workliteuserinfo
						.getUser_graduate_age(), workliteuserinfo
						.getUser_learnexp(), workliteuserinfo
						.getUser_work_age(), workliteuserinfo
						.getUser_experience(),
				workliteuserinfo.getUser_skill(), workliteuserinfo
						.getUser_interest(), workliteuserinfo
						.getUser_corporation(), workliteuserinfo
						.getUser_department(), workliteuserinfo
						.getUser_deptphone(), workliteuserinfo
						.getUser_project(), workliteuserinfo.getUser_post(),
				workliteuserinfo.getUser_poststart(), workliteuserinfo
						.getUser_position(), workliteuserinfo
						.getUser_project_manager(), workliteuserinfo
						.getUser_project_manager_phone(), workliteuserinfo
						.getUser_project_manager_mail(), workliteuserinfo
						.getUser_project_inspector(), workliteuserinfo
						.getUser_project_inspector_phone(), workliteuserinfo
						.getUser_project_inspector_mail(), workliteuserinfo
						.getUser_project_market(), workliteuserinfo
						.getUser_project_market_phone(), workliteuserinfo
						.getUser_project_market_mail(), workliteuserinfo
						.getUser_status(), workliteuserinfo.getUser_vacation(),
				workliteuserinfo.getUser_already_day_num());
		return;
	}
//修改用户信息
	public void saveExist_Worklite_User_Info(WorkliteUserInfo workliteuserinfo) {
		String sql = "update worklite_user_info set " + "user_name=?, "
				+ "user_account=?, "+"user_phone=?, "
				+ "user_telephone=?, " + "user_mail=?, " + "user_address=?, "
				+ "user_postcode=?, " + "user_identification=?, "
				+ "user_birthday=?, " + "user_sex=?, " + "user_political=?, "
				+ "user_nation=?, " + "user_place=?, " + "user_education=?, "
				+ "user_specialty=?, " + "user_school=?, "
				+ "user_graduate_age=?, " + "user_learnexp=?, "
				+ "user_work_age=?, " + "user_experience=?, "
				+ "user_skill=?, " + "user_interest=?, "
				+ "user_corporation=?, " + "user_department=?, "
				+ "user_deptphone=?, " + "user_project=?, " + "user_post=?, "
				+ "user_poststart=?, " + "user_position=?, "
				+ "user_project_manager=?, " + "user_project_manager_phone=?, "
				+ "user_project_manager_mail=?, "
				+ "user_project_inspector=?, "
				+ "user_project_inspector_phone=?, "
				+ "user_project_inspector_mail=?, " + "user_project_market=?, "
				+ "user_project_market_phone=?, "
				+ "user_project_market_mail=?, " + "user_status=?, "
				+ "user_vacation=?, " + "user_already_day_num=?, "+"user_location=? "
				+ "where user_id=?";
		jdbcTemplateObject.update(sql, workliteuserinfo.getUser_name(),
				workliteuserinfo.getUser_account(),workliteuserinfo.getUser_phone(),
				workliteuserinfo.getUser_telephone(), workliteuserinfo
						.getUser_mail(), workliteuserinfo.getUser_address(),
				workliteuserinfo.getUser_postcode(), workliteuserinfo
						.getUser_identification(), workliteuserinfo
						.getUser_birthday(), workliteuserinfo.getUser_sex(),
				workliteuserinfo.getUser_political(), workliteuserinfo
						.getUser_nation(), workliteuserinfo.getUser_place(),
				workliteuserinfo.getUser_education(), workliteuserinfo
						.getUser_specialty(),
				workliteuserinfo.getUser_school(), workliteuserinfo
						.getUser_graduate_age(), workliteuserinfo
						.getUser_learnexp(), workliteuserinfo
						.getUser_work_age(), workliteuserinfo
						.getUser_experience(),
				workliteuserinfo.getUser_skill(), workliteuserinfo
						.getUser_interest(), workliteuserinfo
						.getUser_corporation(), workliteuserinfo
						.getUser_department(), workliteuserinfo
						.getUser_deptphone(), workliteuserinfo
						.getUser_project(), workliteuserinfo.getUser_post(),
				workliteuserinfo.getUser_poststart(), workliteuserinfo
						.getUser_position(), workliteuserinfo
						.getUser_project_manager(), workliteuserinfo
						.getUser_project_manager_phone(), workliteuserinfo
						.getUser_project_manager_mail(), workliteuserinfo
						.getUser_project_inspector(), workliteuserinfo
						.getUser_project_inspector_phone(), workliteuserinfo
						.getUser_project_inspector_mail(), workliteuserinfo
						.getUser_project_market(), workliteuserinfo
						.getUser_project_market_phone(), workliteuserinfo
						.getUser_project_market_mail(), workliteuserinfo
						.getUser_status(), workliteuserinfo.getUser_vacation(),
				workliteuserinfo.getUser_already_day_num(),workliteuserinfo.getUser_location(), workliteuserinfo
						.getUser_id());
		return;
	}

	public void addNew_Worklite_User_Info(WorkliteUserInfo workliteuserinfo) {
		String sql = "insert into worklite_user_info ("
				+ "USER_ID,"
				+ "USER_NAME,"
				+ "USER_ACCOUNT,"
				+ "USER_PWD,"
				+ "USER_PHONE,"
				+ "USER_TELEPHONE,"
				+ "USER_MAIL,"
				+ "USER_ADDRESS,"
				+ "USER_POSTCODE,"
				+ "USER_IDENTIFICATION,"
				+ "USER_BIRTHDAY,"
				+ "USER_SEX,"
				+ "USER_POLITICAL ,"
				+ "USER_NATION,"
				+ "USER_PLACE,"
				+ "USER_EDUCATION,"
				+ "USER_SPECIALTY,"
				+ "USER_SCHOOL,"
				+ "USER_GRADUATE_AGE,"
				+ "USER_LEARNEXP,"
				+ "USER_WORK_AGE,"
				+ "USER_EXPERIENCE,"
				+ "USER_SKILL,"
				+ "USER_INTEREST,"
				+ "USER_CORPORATION,"
				+ "USER_DEPARTMENT,"
				+ "USER_DEPTPHONE,"
				+ "USER_PROJECT,"
				+ "USER_POST,"
				+ "USER_POSTSTART,"
				+ "USER_POSITION,"
				+ "USER_PROJECT_MANAGER,"
				+ "USER_PROJECT_MANAGER_PHONE,"
				+ "USER_PROJECT_MANAGER_MAIL,"
				+ "USER_PROJECT_INSPECTOR,"
				+ "USER_PROJECT_INSPECTOR_PHONE,"
				+ "USER_PROJECT_INSPECTOR_MAIL,"
				+ "USER_PROJECT_MARKET,"
				+ "USER_PROJECT_MARKET_PHONE,"
				+ "USER_PROJECT_MARKET_MAIL,"
				+ "USER_STATUS,"
				+ "USER_VACATION,"
				+ "USER_ALREADY_DAY_NUM) "
				+ "values"
				+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteuserinfo.getUser_id(),
				workliteuserinfo.getUser_name(), workliteuserinfo
						.getUser_account(), workliteuserinfo.getUser_pwd(),
				workliteuserinfo.getUser_phone(), workliteuserinfo
						.getUser_telephone(), workliteuserinfo.getUser_mail(),
				workliteuserinfo.getUser_address(), workliteuserinfo
						.getUser_postcode(), workliteuserinfo
						.getUser_identification(), workliteuserinfo
						.getUser_birthday(), workliteuserinfo.getUser_sex(),
				workliteuserinfo.getUser_political(), workliteuserinfo
						.getUser_nation(), workliteuserinfo.getUser_place(),
				workliteuserinfo.getUser_education(), workliteuserinfo
						.getUser_specialty(),
				workliteuserinfo.getUser_school(), workliteuserinfo
						.getUser_graduate_age(), workliteuserinfo
						.getUser_learnexp(), workliteuserinfo
						.getUser_work_age(), workliteuserinfo
						.getUser_experience(),
				workliteuserinfo.getUser_skill(), workliteuserinfo
						.getUser_interest(), workliteuserinfo
						.getUser_corporation(), workliteuserinfo
						.getUser_department(), workliteuserinfo
						.getUser_deptphone(), workliteuserinfo
						.getUser_project(), workliteuserinfo.getUser_post(),
				workliteuserinfo.getUser_poststart(), workliteuserinfo
						.getUser_position(), workliteuserinfo
						.getUser_project_manager(), workliteuserinfo
						.getUser_project_manager_phone(), workliteuserinfo
						.getUser_project_manager_mail(), workliteuserinfo
						.getUser_project_inspector(), workliteuserinfo
						.getUser_project_inspector_phone(), workliteuserinfo
						.getUser_project_inspector_mail(), workliteuserinfo
						.getUser_project_market(), workliteuserinfo
						.getUser_project_market_phone(), workliteuserinfo
						.getUser_project_market_mail(), workliteuserinfo
						.getUser_status(), workliteuserinfo.getUser_vacation(),
				workliteuserinfo.getUser_already_day_num());
		System.out.println(sql);
	}

	public void addExist_Worklite_User_Info(WorkliteUserInfo workliteuserinfo) {
		String sql = "update worklite_user_info set " + "user_name=?, "
				+ "user_account=?, " + "user_pwd=?, " + "user_phone=?, "
				+ "user_telephone=?, " + "user_mail=?, " + "user_address=?, "
				+ "user_postcode=?, " + "user_identification=?, "
				+ "user_birthday=?, " + "user_sex=?, " + "user_political=?, "
				+ "user_nation=?, " + "user_place=?, " + "user_education=?, "
				+ "user_specialty=?, " + "user_school=?, "
				+ "user_graduate_age=?, " + "user_learnexp=?, "
				+ "user_work_age=?, " + "user_experience=?, "
				+ "user_skill=?, " + "user_interest=?, "
				+ "user_corporation=?, " + "user_department=?, "
				+ "user_deptphone=?, " + "user_project=?, " + "user_post=?, "
				+ "user_poststart=?, " + "user_position=?, "
				+ "user_project_manager=?, " + "user_project_manager_phone=?, "
				+ "user_project_manager_mail=?, "
				+ "user_project_inspector=?, "
				+ "user_project_inspector_phone=?, "
				+ "user_project_inspector_mail=?, " + "user_project_market=?, "
				+ "user_project_market_phone=?, "
				+ "user_project_market_mail=?, " + "user_status=?, "
				+ "user_vacation=? " + "user_already_day_num=? "
				+ "where user_id=?";
		jdbcTemplateObject.update(sql, workliteuserinfo.getUser_name(),
				workliteuserinfo.getUser_account(), workliteuserinfo
						.getUser_pwd(), workliteuserinfo.getUser_phone(),
				workliteuserinfo.getUser_telephone(), workliteuserinfo
						.getUser_mail(), workliteuserinfo.getUser_address(),
				workliteuserinfo.getUser_postcode(), workliteuserinfo
						.getUser_identification(), workliteuserinfo
						.getUser_birthday(), workliteuserinfo.getUser_sex(),
				workliteuserinfo.getUser_political(), workliteuserinfo
						.getUser_nation(), workliteuserinfo.getUser_place(),
				workliteuserinfo.getUser_education(), workliteuserinfo
						.getUser_specialty(),
				workliteuserinfo.getUser_school(), workliteuserinfo
						.getUser_graduate_age(), workliteuserinfo
						.getUser_learnexp(), workliteuserinfo
						.getUser_work_age(), workliteuserinfo
						.getUser_experience(),
				workliteuserinfo.getUser_skill(), workliteuserinfo
						.getUser_interest(), workliteuserinfo
						.getUser_corporation(), workliteuserinfo
						.getUser_department(), workliteuserinfo
						.getUser_deptphone(), workliteuserinfo
						.getUser_project(), workliteuserinfo.getUser_post(),
				workliteuserinfo.getUser_poststart(), workliteuserinfo
						.getUser_position(), workliteuserinfo
						.getUser_project_manager(), workliteuserinfo
						.getUser_project_manager_phone(), workliteuserinfo
						.getUser_project_manager_mail(), workliteuserinfo
						.getUser_project_inspector(), workliteuserinfo
						.getUser_project_inspector_phone(), workliteuserinfo
						.getUser_project_inspector_mail(), workliteuserinfo
						.getUser_project_market(), workliteuserinfo
						.getUser_project_market_phone(), workliteuserinfo
						.getUser_project_market_mail(), workliteuserinfo
						.getUser_status(), workliteuserinfo.getUser_vacation(),
				workliteuserinfo.getUser_already_day_num());
		return;
	}

	public WorkliteUserInfo queryUserInfoDetail(String user_id) {
		WorkliteUserInfo wk;
		String sql = "select * from worklite_user_info where user_id = ?";
		List<WorkliteUserInfo> list = jdbcTemplateObject.query(sql,
				new Object[] { user_id }, new WorkliteUserInfoMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			wk = list.get(0);
			return wk;
		}
	}

	public void updateWorklite_User_Info(WorkliteUserInfo workliteuserinfo) {

		String sql = "update worklite_user_info set " + "user_name=?, "
				+ "user_account=?, " + "user_pwd=?, " + "user_phone=?, "
				+ "user_telephone=?, " + "user_mail=?, " + "user_address=?, "
				+ "user_postcode=?, " + "user_identification=?, "
				+ "user_birthday=?, " + "user_sex=?, " + "user_political=?, "
				+ "user_nation=?, " + "user_place=?, " + "user_education=?, "
				+ "user_specialty=?, " + "user_school=?, "
				+ "user_graduate_age=?, " + "user_learnexp=?, "
				+ "user_work_age=?, " + "user_experience=?, "
				+ "user_skill=?, " + "user_interest=?, "
				+ "user_corporation=?, " + "user_department=?, "
				+ "user_deptphone=?, " + "user_project=?, " + "user_post=?, "
				+ "user_poststart=?, " + "user_position=?, "
				+ "user_project_manager=?, " + "user_project_manager_phone=?, "
				+ "user_project_manager_mail=?, "
				+ "user_project_inspector=?, "
				+ "user_project_inspector_phone=?, "
				+ "user_project_inspector_mail=?, " + "user_project_market=?, "
				+ "user_project_market_phone=?, "
				+ "user_project_market_mail=?, " + "user_status=?, "
				+ "user_vacation=? " + "user_already_day_num=? "
				+ "where user_id=?";
		jdbcTemplateObject.update(sql, workliteuserinfo.getUser_name(),
				workliteuserinfo.getUser_account(), workliteuserinfo
						.getUser_pwd(), workliteuserinfo.getUser_phone(),
				workliteuserinfo.getUser_telephone(), workliteuserinfo
						.getUser_mail(), workliteuserinfo.getUser_address(),
				workliteuserinfo.getUser_postcode(), workliteuserinfo
						.getUser_identification(), workliteuserinfo
						.getUser_birthday(), workliteuserinfo.getUser_sex(),
				workliteuserinfo.getUser_political(), workliteuserinfo
						.getUser_nation(), workliteuserinfo.getUser_place(),
				workliteuserinfo.getUser_education(), workliteuserinfo
						.getUser_specialty(),
				workliteuserinfo.getUser_school(), workliteuserinfo
						.getUser_graduate_age(), workliteuserinfo
						.getUser_learnexp(), workliteuserinfo
						.getUser_work_age(), workliteuserinfo
						.getUser_experience(),
				workliteuserinfo.getUser_skill(), workliteuserinfo
						.getUser_interest(), workliteuserinfo
						.getUser_corporation(), workliteuserinfo
						.getUser_department(), workliteuserinfo
						.getUser_deptphone(), workliteuserinfo
						.getUser_project(), workliteuserinfo.getUser_post(),
				workliteuserinfo.getUser_poststart(), workliteuserinfo
						.getUser_position(), workliteuserinfo
						.getUser_project_manager(), workliteuserinfo
						.getUser_project_manager_phone(), workliteuserinfo
						.getUser_project_manager_mail(), workliteuserinfo
						.getUser_project_inspector(), workliteuserinfo
						.getUser_project_inspector_phone(), workliteuserinfo
						.getUser_project_inspector_mail(), workliteuserinfo
						.getUser_project_market(), workliteuserinfo
						.getUser_project_market_phone(), workliteuserinfo
						.getUser_project_market_mail(), workliteuserinfo
						.getUser_status(), workliteuserinfo.getUser_vacation(),
				workliteuserinfo.getUser_already_day_num());
		return;
	}

	public PageModelByIndication findByPage(int pageNo, int pageSize, WorkliteUserInfo workliteuserinfo) {
		int begin = (pageNo - 1) * pageSize + 1;
		int end = (pageNo - 1) * pageSize + 10;
		String sql = "select * from (select a.*,rownum rn from (select * from worklite_user_info where " +
   		             "user_education like '" + workliteuserinfo.getUser_education()+
   		             "' and user_status like '"+workliteuserinfo.getUser_status()+
   		             "' and user_name like '"+workliteuserinfo.getUser_name()+
   		             "' and user_project like '"+workliteuserinfo.getUser_project()+
   		             "' and user_specialty like '"+workliteuserinfo.getUser_specialty()+
   		             "' and user_corporation like '"+workliteuserinfo.getUser_corporation()+
   		             "' order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
		List<WorkliteUserInfo> list = jdbcTemplateObject.query(sql, new WorkliteUserInfoMapper());
		
		PageModelByIndication pageModelByIndication = new PageModelByIndication();
		pageModelByIndication.setPageNo(pageNo);
		pageModelByIndication.setTotalRecords(getTotalRecords(workliteuserinfo));
		pageModelByIndication.setPageSize(pageSize);
		
		if(workliteuserinfo.getUser_project().equals("%%")){
			workliteuserinfo.setUser_project("");
        }
		if(workliteuserinfo.getUser_education().equals("%%")){
			workliteuserinfo.setUser_education("");
        }
		if(workliteuserinfo.getUser_name().equals("%%")){
			workliteuserinfo.setUser_name("");
        }
		if(workliteuserinfo.getUser_specialty().equals("%%")){
			workliteuserinfo.setUser_specialty("");
        }
		if(workliteuserinfo.getUser_corporation().equals("%%")){
			workliteuserinfo.setUser_corporation("");
        }
		if(workliteuserinfo.getUser_status().equals("%%")){
			workliteuserinfo.setUser_status("");
        }		
		pageModelByIndication.setWorkliteuserinfo(workliteuserinfo);
		pageModelByIndication.setList(list);		
		return pageModelByIndication;
	}

	private int getTotalRecords(WorkliteUserInfo workliteuserinfo) {
		String sql = "select count(user_id) from worklite_user_info where " +
				     "user_education like '" + workliteuserinfo.getUser_education()+
   		             "' and user_status like '"+workliteuserinfo.getUser_status()+
   		             "' and user_name like '"+workliteuserinfo.getUser_name()+
   		             "' and user_project like '"+workliteuserinfo.getUser_project()+
   		             "' and user_specialty like '"+workliteuserinfo.getUser_specialty()+
   		             "' and user_corporation like '"+workliteuserinfo.getUser_corporation()+"" +
   		             "'";
		int totalRecords = jdbcTemplateObject.queryForInt(sql);
		return (totalRecords);
	}

	//根据用户的密码
	public String updatepwdbyuserid(String userid,String pwd){
		try{
		String sql="update worklite_user_login set user_pwd =? where user_id=?";
		jdbcTemplateObject.update(sql,pwd,userid);
		return "success";}
		catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
		
	}
	
	public void annulWorklite_User_Info(String user_id) {
		String sql = "update worklite_user_info set user_status='0' where user_id=?";
		jdbcTemplateObject.update(sql, user_id);
	}

	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}

	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
	}

	public PageModel getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}

	public DataSource getDatasource() {
		return datasource;
	}

}
