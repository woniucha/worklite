package wtyw.worklite.dao;

import java.util.*;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.beans.WorkliteTodoing;
import wtyw.worklite.beans.WorkliteUserLogin;
import wtyw.worklite.beans.WorkliteVacation;
import wtyw.worklite.mapper.WorkliteTodoingMapper;
import wtyw.worklite.mapper.WorkliteUserInfoMapper;
import wtyw.worklite.mapper.WorkliteUserLoginMapper;
import wtyw.worklite.mapper.WorkliteVacationMapper;
import wtyw.worklite.util.NewDate;
import wtyw.worklite.util.PageModel;


public class WorkliteUserDao {
  
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;
	

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	
    public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}

	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
	}

	public DataSource getDatasource() {
		return datasource;
	}

	public List<WorkliteUserLogin> queryWorklite_usersbyID(String userId) {

		List<WorkliteUserLogin> workliteusers = null;
		//String sql="select * from worklite_user_login where user_id=? and user_status='1'";
		String sql="select * from worklite_user_login where user_id=? ";
		workliteusers=jdbcTemplateObject.query(sql, new Object[]{userId},new WorkliteUserLoginMapper());
		return workliteusers;
	}
	
	//查询所有用户登录信息
	public List<WorkliteUserLogin> queryWorklitealluser() {

		List<WorkliteUserLogin> workliteusers = null;
		String sql="select * from worklite_user_login";
		workliteusers=jdbcTemplateObject.query(sql, new WorkliteUserLoginMapper());
		System.out.println();
		return workliteusers;
	}

	public List<WorkliteUserLogin> queryWorklite_usersbyname(String userName) {
		
		List<WorkliteUserLogin> workliteusers = null;
		String sql="select * from worklite_user_login where user_name=? and user_status='1'";
		workliteusers=jdbcTemplateObject.query(sql,new Object[]{userName}, new WorkliteUserLoginMapper());
		return workliteusers;
	}
	

	public List<WorkliteUserInfo> queryWorklite_userInfoByName(String userName) {
		List<WorkliteUserInfo> workliteuserinfos = null;
		String sql="select * from worklite_user_info where user_account=? and user_status='1'";
		workliteuserinfos = jdbcTemplateObject.query(sql,new Object[]{userName}, new WorkliteUserInfoMapper());
		return workliteuserinfos;
	}
	
	public List<WorkliteTodoing> queryTodoing(String userName) {
		List<WorkliteTodoing> worklitetodoings = null;
		String sql="select * from worklite_todoing where wd_person=?";
		worklitetodoings = jdbcTemplateObject.query(sql,new Object[]{userName}, new WorkliteTodoingMapper());
		return worklitetodoings;
	}
	
	
	public void addWorklite_users(WorkliteUserLogin workliteuserlogin) {

		String sql="insert into worklite_user_login values (?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql,
				workliteuserlogin.getUser_id(),
				workliteuserlogin.getUser_name(),
				workliteuserlogin.getUser_uass_name(),
				workliteuserlogin.getUser_pwd(),
				workliteuserlogin.getUser_reg_date(),
				workliteuserlogin.getUser_cancel_date(),
				workliteuserlogin.getUser_login_frequency(),
				workliteuserlogin.getUser_nearly_login_date(),
				workliteuserlogin.getUser_status());
		return;
	}
	

	public void addWorklite_User_Info(WorkliteUserInfo workliteuserinfo){

	}

	public void updateWorklite_User_Info(WorkliteUserInfo workliteuserinfo){
		
	return;
    }

	public void cancelWorklite_User_Info(WorkliteUserInfo workliteuserinfo){
		String sql="update Worklite_user_info set " +
				"User_status=2" +
				"where User_id=?";
			jdbcTemplateObject.update(sql, workliteuserinfo.getUser_id());
	    return;
    }

//	public WorkliteUserInfo findByUserId(String user_id){
//		List<WorkliteUserInfo> workliteuserinfos = null;
//		String sql="select * from worklite_user_info where user_id=?";
//		workliteuserinfos = jdbcTemplateObject.query(sql, new Object[]{ user_id },new WorkliteUserInfoMapper());
//		return workliteuserinfos.get(0);
//	}
	
	public WorkliteUserInfo findByUserId(String user_id) throws Exception{	
		String flag="审核通过";
		Double days=0.0;
		int year=NewDate.newYear();
		long diff1=0;
		long diff2=0;
		List<WorkliteUserInfo> workliteuserinfos = null;
		WorkliteUserInfo wu=null;
		String sql="select * from worklite_user_info where user_id=?";
		workliteuserinfos = jdbcTemplateObject.query(sql, new Object[]{ user_id },new WorkliteUserInfoMapper());
		wu=workliteuserinfos.get(0);
		
		String sql1= "select * from worklite_vacation where " +
		" vacation_status = ? and vacation_person = ?" +
		" and vacation_enddate >= '"+(year-1)+"-01-01"+
		"' and vacation_enddate <= '"+(year+1)+"-12-31'";
		System.out.println(sql1);
		List<WorkliteVacation> list1 = jdbcTemplateObject.query(sql1,
				new Object[] { flag,wu.getUser_name() }, new WorkliteVacationMapper());
		for(int i=0;i<list1.size();i++){
			//若开始日期年份在上一年并且结束日期在当前年,用结束日期减去year+"-01-01"
			if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year-1+"")&&
			   list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+"")){
//				if(list1.get(i).getVacation_day_num().replace(" ", "").indexOf(".")!=0)
				diff1=NewDate.betweenDate(year+"-01-01", list1.get(i).getVacation_enddate())+1;
			
			}
			//若开始日期年份在当前年并且结束日期年份在后一年,用year+"-12-31"减去开始日期
			if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year+"")&&
				list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+1+"")){
				diff2=NewDate.betweenDate(list1.get(i).getVacation_startdate(), year+"-12-31")+1;
			}
			//若开始日期年份和结束日期年份都在当前年
			if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year+"")&&
			   list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+"")){
			   days=days+Double.parseDouble(list1.get(i).getVacation_day_num());
			}
		}
		wu.setUser_already_day_num(diff1+diff2+days+"");
		return wu;
	}

	public List<WorkliteUserInfo> findByRequirement(WorkliteUserInfo workliteuserinfo){
		List<WorkliteUserInfo> list = null;
		return list;
	}

	 public PageModel findByPage(int pageNo,int pageSize){
	
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_user_info order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;

		   List<WorkliteUserInfo> list = jdbcTemplateObject.query(sql,new WorkliteUserInfoMapper());
		
		   PageModel pageModel = new PageModel();
		   pageModel.setPageNo(pageNo);
		   pageModel.setTotalRecords(getTotalRecords());
	       pageModel.setPageSize(pageSize);
	       pageModel.setList(list);
	  
	       return pageModel;
	   }

	 private int getTotalRecords(){
		   String sql = "select count(kl_id) from worklite_user_info";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }

	public WorkliteUserLogin findByLoginId(String userId) {
		// TODO Auto-generated method stub
		List<WorkliteUserLogin> workliteUserLogins = null;
		String sql="select * from worklite_user_login where user_id=?";
		workliteUserLogins = jdbcTemplateObject.query(sql, new Object[]{ userId },new WorkliteUserLoginMapper());
		if (workliteUserLogins.isEmpty()) {
			return null;
		}
		return workliteUserLogins.get(0);
	}

	public void updateWorklite_user_login(WorkliteUserLogin workliteuserlogin) {
		// TODO Auto-generated method stub
		String sql="update worklite_user_login set " +
		"user_pwd=?," +
		"user_status=?," +
		"user_name=? " +
		"where User_id=?";
	jdbcTemplateObject.update(sql,workliteuserlogin.getUser_pwd(),workliteuserlogin.getUser_status(),workliteuserlogin.getUser_name(),workliteuserlogin.getUser_id());
	}
	   
}
