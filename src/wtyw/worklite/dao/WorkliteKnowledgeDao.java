package wtyw.worklite.dao;

/*
 * author 陈祝军 
 * 2016.01.27
 */

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.mapper.WorkliteKnowledgeMapper;
import wtyw.worklite.util.PageModelByIndication;



public class WorkliteKnowledgeDao {
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;
	
	//指定数据库
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	
	//保存新创建知识为草稿
	public void saveNew_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        
		//知识表(worklite_knowledge)里新增一条知识
		String sql = "insert into worklite_knowledge (KL_ID,KL_TITLE,KL_SYSTEM,KL_SYSTEM_ALIAS,KL_COMMIT_TIME,KL_COMMIT_PERSON,KL_CHECK_PERSON,KL_APPEARANCE,KL_REASON,KL_SOLUTION,KL_OPERATE_PROGRAM,KL_REPLY_STRATEGY,KL_SAMPLE,KL_COMMENT,KL_STATUS,KL_ENVIROMENT,KL_PRIORITY) " +
	                 "values" +
	                 " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplateObject.update(sql, 
                     workliteknowledge.getKl_id(), 
                     workliteknowledge.getKl_title(), 
                     workliteknowledge.getKl_system(),
                     workliteknowledge.getKl_system_alias(),
                     workliteknowledge.getKl_commit_time(),
                     workliteknowledge.getKl_commit_person(),
                     workliteknowledge.getKl_check_person(),
                     workliteknowledge.getKl_appearance(),
                     workliteknowledge.getKl_reason(),
                     workliteknowledge.getKl_solution(),
                     workliteknowledge.getKl_operate_program(),
                     workliteknowledge.getKl_reply_strategy(),
                     workliteknowledge.getKl_sample(),
                     workliteknowledge.getKl_comment(),
                     workliteknowledge.getKl_status(),
                     workliteknowledge.getKl_enviroment(),
                     workliteknowledge.getKl_priority());
        
		//待办事项表(worklite_todoing)新增一条待办事项
		String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql2, 
                     workliteknowledge.getKl_id(), 
                     workliteknowledge.getKl_title(), 
                     workliteknowledge.getKl_status(),
                     workliteknowledge.getKl_commit_time(),
                     workliteknowledge.getKl_commit_person(),
                     workliteknowledge.getKl_priority());	
		return;
	}
	
	//再次保存草稿知识为草稿
	public void saveExist_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //根据知识编号更新知识表
		String sql="update worklite_knowledge set " +
				"kl_title=?, " +
				"kl_system=?, " +
				"kl_system_alias=?, " +
				"kl_commit_time=?, " +
				"kl_commit_person=?, " +
				"kl_check_person=?, " +
				"kl_appearance=?, " +
				"kl_reason=?, " +
				"kl_solution=?, " +
				"kl_operate_program=?, " +
				"kl_reply_strategy=?, " +
				"kl_sample=?, " +
				"kl_comment=?, " +
				"kl_status=?, " +
				"kl_enviroment=? " +
				"where kl_id=?";
			jdbcTemplateObject.update(sql, 
					workliteknowledge.getKl_title(), 
					workliteknowledge.getKl_system(), 
					workliteknowledge.getKl_system_alias(), 
					workliteknowledge.getKl_commit_time(), 
					workliteknowledge.getKl_commit_person(), 
					workliteknowledge.getKl_check_person(), 
					workliteknowledge.getKl_appearance(), 
					workliteknowledge.getKl_reason(), 
					workliteknowledge.getKl_solution(), 
					workliteknowledge.getKl_operate_program(), 
					workliteknowledge.getKl_reply_strategy(), 
					workliteknowledge.getKl_sample(), 
					workliteknowledge.getKl_comment(), 
					workliteknowledge.getKl_status(), 
					workliteknowledge.getKl_enviroment(), 
					workliteknowledge.getKl_id());
			//更新待办事项表里的记录
			String sql2 = "update worklite_todoing set " +
					"wd_title=?, " +
					"wd_type=?, " +
					"wd_date=?, " +
					"wd_person=?, " +
					"wd_priority=? " +
					"where wd_id=?";
			jdbcTemplateObject.update(sql2, 
					workliteknowledge.getKl_title(), 
				    workliteknowledge.getKl_status(), 
					workliteknowledge.getKl_commit_time(), 
					workliteknowledge.getKl_commit_person(), 
					workliteknowledge.getKl_priority(), 
					workliteknowledge.getKl_id());
		return;
	}
	
	//在创建功能里提交知识审核
	public void addNew_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //为知识表(worklite_knowledge)增加一条知识
		String sql = "insert into worklite_knowledge (" +
				   "KL_ID," +
				   "KL_TITLE," +
				   "KL_SYSTEM," +
				   "KL_SYSTEM_ALIAS," +
				   "KL_COMMIT_TIME," +
				   "KL_COMMIT_PERSON," +
				   "KL_CHECK_PERSON," +
				   "KL_APPEARANCE," +
				   "KL_REASON," +
				   "KL_SOLUTION," +
				   "KL_OPERATE_PROGRAM," +
				   "KL_REPLY_STRATEGY," +
				   "KL_SAMPLE," +
				   "KL_COMMENT," +
				   "KL_STATUS," +
				   "KL_ENVIROMENT," +
				   "KL_CHECK_FREQUENCY," +
				   "KL_PRIORITY) " +
				   "values" +
				   " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, 
		           workliteknowledge.getKl_id(), 
		           workliteknowledge.getKl_title(), 
		           workliteknowledge.getKl_system(),
		           workliteknowledge.getKl_system_alias(),
		           workliteknowledge.getKl_commit_time(),
		           workliteknowledge.getKl_commit_person(),
		           workliteknowledge.getKl_check_person(),
		           workliteknowledge.getKl_appearance(),
		           workliteknowledge.getKl_reason(),
		           workliteknowledge.getKl_solution(),
		           workliteknowledge.getKl_operate_program(),
		           workliteknowledge.getKl_reply_strategy(),
		           workliteknowledge.getKl_sample(),
		           workliteknowledge.getKl_comment(),
		           workliteknowledge.getKl_status(),
		           workliteknowledge.getKl_enviroment(),
		           workliteknowledge.getKl_check_frequency(),
		           workliteknowledge.getKl_priority());
		//为待办事项表(worklite_todoing)增加一条待办事项
		String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql2, 
				  workliteknowledge.getKl_id(), 
				  workliteknowledge.getKl_title(), 
				  workliteknowledge.getKl_status(), 
				  workliteknowledge.getKl_commit_time(), 
				  workliteknowledge.getKl_check_person(), 
				  workliteknowledge.getKl_priority()); 
		return;
	}
	
	//在编辑功能里提交知识审核
	public void addExist_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //为知识表(worklite_knowledge)增加一条知识
		String sql = "update worklite_knowledge set " +
		             "kl_title=?, " +
		             "kl_system=?, " +
		             "kl_system_alias=?, " +
		             "kl_commit_time=?, " +
		             "kl_commit_person=?, " +
		             "kl_check_person=?, " +
		             "kl_appearance=?, " +
		             "kl_reason=?, " +
		             "kl_solution=?, " +
		             "kl_operate_program=?, " +
		             "kl_reply_strategy=?, " +
		             "kl_sample=?, " +
		             "kl_comment=?, " +
		             "kl_status=?, " +
		             "kl_check_frequency=?, " +
		             "kl_enviroment=? " +
		             "where kl_id=?";
	    jdbcTemplateObject.update(sql, 
			         workliteknowledge.getKl_title(), 
			         workliteknowledge.getKl_system(), 
			         workliteknowledge.getKl_system_alias(), 
			         workliteknowledge.getKl_commit_time(), 
			         workliteknowledge.getKl_commit_person(), 
			         workliteknowledge.getKl_check_person(), 
			         workliteknowledge.getKl_appearance(), 
			         workliteknowledge.getKl_reason(), 
			         workliteknowledge.getKl_solution(), 
			         workliteknowledge.getKl_operate_program(), 
			         workliteknowledge.getKl_reply_strategy(), 
			         workliteknowledge.getKl_sample(), 
			         workliteknowledge.getKl_comment(), 
			         workliteknowledge.getKl_status(), 
			         workliteknowledge.getKl_check_frequency(), 
			         workliteknowledge.getKl_enviroment(), 
			         workliteknowledge.getKl_id());
	     //更新待办事项表里的记录
	     String sql2 = "update worklite_todoing set " +
			          "wd_title=?, " +
			          "wd_type=?, " +
			          "wd_date=?, " +
			          "wd_person=?, " +
			          "wd_priority=? " +
			          "where wd_id=?";
	     jdbcTemplateObject.update(sql2, 
			         workliteknowledge.getKl_title(), 
		             workliteknowledge.getKl_status(), 
			         workliteknowledge.getKl_commit_time(), 
			         workliteknowledge.getKl_check_person(), 
			         workliteknowledge.getKl_priority(), 
			         workliteknowledge.getKl_id());
		return;
	}	
	
	//在审核功能里提交审核通过并发布
	public void issue_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
          //修改知识表的知识状态
		  String sql = "update worklite_knowledge set " +
		  		     "kl_status=?, " +
		             "kl_check_time=?, " +
		             "kl_check_suggest=?, " +
		             "kl_check_frequency=? " +
		             "where kl_id=?";
	      jdbcTemplateObject.update(sql, 
	    		     workliteknowledge.getKl_status(), 
			         workliteknowledge.getKl_check_time(), 
			         workliteknowledge.getKl_check_suggest(), 
			         workliteknowledge.getKl_check_frequency(), 
			         workliteknowledge.getKl_id());
	       //更新待办事项表里的记录
	       String sql2 = "delete from worklite_todoing where wd_id=?";
	       jdbcTemplateObject.update(sql2, workliteknowledge.getKl_id());
		return;
	}	
	
	//在审核功能里提交审核不通过
	public void rollback_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
          //为知识表(worklite_knowledge)增加一条知识
		  String sql = "update worklite_knowledge set " +
		             "kl_status=?, " +
		             "kl_check_suggest=?, " +
		             "kl_check_frequency=? " +
		             "where kl_id=?";
	       jdbcTemplateObject.update(sql, 
			         workliteknowledge.getKl_status(), 
			         workliteknowledge.getKl_check_suggest(), 
			         workliteknowledge.getKl_check_frequency(),  
			         workliteknowledge.getKl_id());
	       //更新待办事项表里的记录
	       String sql2 = "update worklite_todoing set " +
			          "wd_type=?, " +
			          "wd_person=? " +
			          "where wd_id=?";
	       jdbcTemplateObject.update(sql2, 
		             workliteknowledge.getKl_status(), 
			         workliteknowledge.getKl_commit_person(), 
			         workliteknowledge.getKl_id());
		return;
	}	

	//查询知识明细
	public WorkliteKnowledge queryKnowledgeDetail(String kl_id) {
		WorkliteKnowledge wk;
		String sql = "select * from worklite_knowledge where kl_id = ?";
		List<WorkliteKnowledge> list = jdbcTemplateObject.query(sql,new Object[]{kl_id},new WorkliteKnowledgeMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			wk = list.get(0);
			return wk;
		}
	}
	
	/**	
	//修改知识
	public void updateWorklite_knowledge(WorkliteKnowledge workliteknowledge) {

		String sql = "insert into worklite_knowledge values (?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteknowledge.getToken_id(), workliteknowledge
				.getToken_uass_name(), workliteknowledge.getToken_pwd(),workliteknowledge.getToken_pin(),workliteknowledge.getToken_location(),workliteknowledge.getToken_reg_time(),workliteknowledge.getToken_owner(),workliteknowledge.getToken_office(),workliteknowledge.getToken_remarks()
				,workliteknowledge.getToken_status());
	}
	
	//审核、发布、退回知识
	public void checkWorklite_knowledge(WorkliteKnowledge workliteknowledge) {

		String sql = "insert into worklite_knowledge values (?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteknowledge.getToken_id(), workliteknowledge
				.getToken_uass_name(), workliteknowledge.getToken_pwd(),workliteknowledge.getToken_pin(),workliteknowledge.getToken_location(),workliteknowledge.getToken_reg_time(),workliteknowledge.getToken_owner(),workliteknowledge.getToken_office(),workliteknowledge.getToken_remarks()
				,workliteknowledge.getToken_status());
	}
	 * 
	 */
	   //根据条件，分页查询
	   public PageModelByIndication findByPage(int pageNo,int pageSize,WorkliteKnowledge workliteknowledge,
			   String begin_date, String end_date){
		   //计算开始记录和截止记录
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL语句：根据开始记录和截止记录查询表
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_knowledge where " +
		   		"kl_id like '"+workliteknowledge.getKl_id()+
		   		"' and kl_commit_person like '"+workliteknowledge.getKl_commit_person()+
		   		"' and kl_system like '"+workliteknowledge.getKl_system()+
		   		"' and kl_status like '"+workliteknowledge.getKl_status()+
		   		"' and ( kl_commit_time <= '"+end_date+
		   		"' and kl_commit_time >= '"+begin_date+
		   		"' ) order by kl_commit_time desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //使用List存放数据表记录
		   List<WorkliteKnowledge> list = jdbcTemplateObject.query(sql,new WorkliteKnowledgeMapper());
		   //生成PageModel对象
		   PageModelByIndication pageModel = new PageModelByIndication();
		   pageModel.setPageNo(pageNo);
		   pageModel.setTotalRecords(getTotalRecords(workliteknowledge, begin_date, end_date));
		   pageModel.setPageSize(pageSize);
			if(workliteknowledge.getKl_id().equals("%%")){
				workliteknowledge.setKl_id("");
	        }
			if(workliteknowledge.getKl_system().equals("%%")){
				workliteknowledge.setKl_system("");
	        }
			if(workliteknowledge.getKl_commit_person().equals("%%")){
				workliteknowledge.setKl_commit_person("");
	        }
			if(workliteknowledge.getKl_status().equals("%%")){
				workliteknowledge.setKl_status("");
	        }
		   pageModel.setWorkliteknowledge(workliteknowledge);
		   pageModel.setKl_begin_date(begin_date);
		   pageModel.setKl_end_date(end_date);
		   pageModel.setList(list);
	        //返回pageModel对象
	       return pageModel;
	   }

	   private int getTotalRecords(WorkliteKnowledge workliteknowledge, String begin_date, String end_date ){
		   String sql = "select count(kl_id) from worklite_knowledge where " +
		   		"kl_id like '"+workliteknowledge.getKl_id()+
		   		"' and kl_commit_person like '"+workliteknowledge.getKl_commit_person()+
		   		"' and kl_system like '"+workliteknowledge.getKl_system()+
		   		"' and kl_status like '"+workliteknowledge.getKl_status()+
		   		"' and ( kl_commit_time <= '"+end_date+
		   		"' and kl_commit_time >= '"+begin_date+
		   	    "')";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }
	   /*
	   //删除知识
	   public String deleteKnowledge(){
		   return "success";
	   }

	}
	//修改
	 * 
	 */
}
