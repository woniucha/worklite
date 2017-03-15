package wtyw.worklite.dao;

import java.util.List;
import wtyw.worklite.util.*;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.mapper.WorkliteTokenMapper;
import wtyw.worklite.mapper.WorkliteTokenLendMapper;
import wtyw.worklite.IDao.IWorklite_TokenDao;
import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteTokenLend;
import wtyw.worklite.common.GenerateID;

/*
 * author 陈祝军&徐晓东
 * 2016.01.26
 */

public  class WorkliteTokenDao implements IWorklite_TokenDao {
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;
	private PageModel pageModel;
	
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	

	public void addWorklite_token(WorkliteToken worklitetoken) {
		worklitetoken.setToken_status("可领用");
		worklitetoken.setToken_id(new GenerateID().generateTokenId());
		String sql = "insert into worklite_token values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, 
				worklitetoken.getToken_id(), 
				worklitetoken.getToken_uass_name(), 
				worklitetoken.getToken_pwd(), 
				worklitetoken.getToken_pin(), 
				worklitetoken.getToken_location(),
				worklitetoken.getToken_reg_time(),
				worklitetoken.getToken_owner(),
				worklitetoken.getToken_office(),
				worklitetoken.getToken_remarks(),
				worklitetoken.getToken_status(),
				worklitetoken.getToken_root(),
				worklitetoken.getToken_system(),
				worklitetoken.getToken_no(),
				worklitetoken.getToken_phone(),
				worklitetoken.getToken_request(),
				worklitetoken.getToken_logout());
	}

	public WorkliteToken queryWorklitetoken(String tokenid) {
		List<WorkliteToken> worklitetokens = null;
		WorkliteToken worklitetoken = null;
		String sql = "select * from worklite_token where token_id=?";
		worklitetokens = jdbcTemplateObject.query(sql,
				new Object[] { tokenid }, new WorkliteTokenMapper());
		if (worklitetokens.isEmpty()) {
			return worklitetoken;
		} else {
			worklitetoken = worklitetokens.get(0);
			return worklitetoken;
		}
	}
	


	public void updateWorklitetoken(WorkliteToken worklitetoken) {
		System.out.println(worklitetoken.getToken_uass_name()+"D");
		System.out.println(worklitetoken.getToken_location()+"locD");
		System.out.println(worklitetoken.getToken_owner()+"ownD");
		System.out.println(worklitetoken.getToken_status()+"STUD");
		String sql = "update worklite_token set token_uass_name=?,token_pwd=?,token_pin=?,token_location=?,token_reg_time=?,token_owner=?,token_office=?,token_remarks=?,token_status=? ,token_root=?  where token_id=?";
		jdbcTemplateObject.update(sql, worklitetoken.getToken_uass_name(),
				worklitetoken.getToken_pwd().trim(), worklitetoken.getToken_pin(),
				worklitetoken.getToken_location(), worklitetoken
						.getToken_reg_time(), worklitetoken.getToken_owner(),
				worklitetoken.getToken_office(), worklitetoken
						.getToken_remarks(), worklitetoken.getToken_status(),worklitetoken.getToken_root(),
				worklitetoken.getToken_id());
		return;
	}

	public String annulworklitetoken(String tokenid) {
		String sql = "update worklite_token set token_status='已注销' where token_id=?";
		jdbcTemplateObject.update(sql, tokenid);
		return "success";
	}

	public void lendWorkliteToken(String tokenid, String username,String usetime, String fafangname, String lendid) {
		String sql = "update worklite_token set token_status='已领用' where token_id=?";
		jdbcTemplateObject.update(sql, tokenid);
		String sql1 = "insert into worklite_token_lend (token_id,user_name,use_time,ffang_name,lend_id,lend_status) values(?,?,?,?,?,0)";
		jdbcTemplateObject.update(sql1, tokenid, username, usetime, fafangname, lendid);

	}
	
 	public WorkliteTokenLend queryTokenLend(String tokenid) {
		List<WorkliteTokenLend> worklitetokenlends = null;
		WorkliteTokenLend worklitetokenlend = null;
		String sql = "select * from worklite_token_lend where token_id=? and lend_status = '0'";
		worklitetokenlends = jdbcTemplateObject.query(sql,
				new Object[] { tokenid }, new WorkliteTokenLendMapper());
		if (worklitetokenlends.isEmpty()) {
			return worklitetokenlend;
		} else {
			worklitetokenlend = worklitetokenlends.get(0);
			return worklitetokenlend;
		}
	}

	public void backToken(String tokenid, String backname,String backtime, String rkname) {
		String sql = "update worklite_token set token_status='可领用' where token_id=?";
		jdbcTemplateObject.update(sql, tokenid);
		String sql1 = "update worklite_token_lend set back_time=?,backer_name=?,rk_name=?,lend_status='1' where token_id=? and lend_status='0'";
		jdbcTemplateObject.update(sql1, backtime, backname, rkname, tokenid);
	}
	
	 //按条件分页查询
	   public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteToken worklitetoken){
		   
		   //计算开始记录和截止记录
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL语句：根据开始记录和截止记录查询表
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_token where " +
		   		"token_id like '" + worklitetoken.getToken_id()+
		   		"' and token_status like '"+worklitetoken.getToken_status()+
		   		"' and token_uass_name like '"+worklitetoken.getToken_uass_name()+
		   		"' and token_location like '"+worklitetoken.getToken_location()+
		   		"' and token_owner like '"+worklitetoken.getToken_owner()+
		   		"' and token_office like '"+worklitetoken.getToken_office()+
		   		"' and token_root like '"+worklitetoken.getToken_root()+
		   		"' order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //使用List存放数据表记录
		   System.out.println(sql);
		   List<WorkliteToken> list = jdbcTemplateObject.query(sql,new WorkliteTokenMapper());
		   //生成PageModel对象
		   PageModelByIndication pageModel = new PageModelByIndication();
		   pageModel.setPageNo(pageNo);
		   pageModel.setTotalRecords(getTotalRecords(worklitetoken));
		   pageModel.setPageSize(pageSize);
		   if(worklitetoken.getToken_id().equals("%%")){
				worklitetoken.setToken_id("");
	        }
			if(worklitetoken.getToken_uass_name().equals("%%")){
				worklitetoken.setToken_uass_name("");
	        }
			if(worklitetoken.getToken_location().equals("%%")){
				worklitetoken.setToken_location("");
	        }
			if(worklitetoken.getToken_owner().equals("%%")){
				worklitetoken.setToken_owner("");
	        }
			if(worklitetoken.getToken_office().equals("%%")){
				worklitetoken.setToken_office("");
	        }
			if(worklitetoken.getToken_status().equals("%%")){
				worklitetoken.setToken_status("");
	        }
			if(worklitetoken.getToken_root().equals("%%")){
				worklitetoken.setToken_root("");
			}
		   pageModel.setWorklitetoken(worklitetoken);
	       pageModel.setList(list);
	       //返回pageModel对象
	       return pageModel;
	   }

	   private int getTotalRecords(WorkliteToken worklitetoken){
		   String sql = "select count(token_id) from worklite_token where " +
	   		"token_id like '" + worklitetoken.getToken_id()+
	   		"' and token_status like '"+worklitetoken.getToken_status()+
	   		"' and token_uass_name like '"+worklitetoken.getToken_uass_name()+
	   		"' and token_location like '"+worklitetoken.getToken_location()+
	   		"' and token_owner like '"+worklitetoken.getToken_owner()+
	   		"' and token_office like '"+worklitetoken.getToken_office()+
	   		"' and token_root like '"+worklitetoken.getToken_root()+
	   		"'";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }

   public PageModel findByPage_Tokenlend(int pageNo,int pageSize,String token_id){
	   int begin = (pageNo-1)*pageSize+1;
	   int end = (pageNo-1)*pageSize+10;
	   String sql = "select * from (select a.*,rownum rn from (select * from worklite_token_lend  where token_id=? order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
	   List<WorkliteTokenLend> list = jdbcTemplateObject.query(sql, new Object[] { token_id.trim() }, new WorkliteTokenLendMapper());
	   PageModel pageModel = new PageModel();
	   pageModel.setPageNo(pageNo);
	   pageModel.setTotalRecords(getTotalRecords_lend(token_id));
       pageModel.setPageSize(pageSize);
       pageModel.setList(list);
       return pageModel;
   }

   private int getTotalRecords_lend(String token_id){
   String sql = "select count(token_id) from worklite_token_lend where token_id=?";
   int totalRecords = jdbcTemplateObject.queryForInt(sql,new Object[] { token_id });
   return (totalRecords);
}
	
	public List<WorkliteToken> allWorkliteToken() {
		List<WorkliteToken> worklitetokens = null;	
		String sql = "select * from worklite_token ";
		worklitetokens = jdbcTemplateObject.query(sql,new WorkliteTokenMapper());
		
		return worklitetokens;
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
