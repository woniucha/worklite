package wtyw.worklite.dao;

/*
 * author ��ף�� 
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
	
	//ָ�����ݿ�
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	
	//�����´���֪ʶΪ�ݸ�
	public void saveNew_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        
		//֪ʶ��(worklite_knowledge)������һ��֪ʶ
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
        
		//���������(worklite_todoing)����һ����������
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
	
	//�ٴα���ݸ�֪ʶΪ�ݸ�
	public void saveExist_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //����֪ʶ��Ÿ���֪ʶ��
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
			//���´����������ļ�¼
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
	
	//�ڴ����������ύ֪ʶ���
	public void addNew_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //Ϊ֪ʶ��(worklite_knowledge)����һ��֪ʶ
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
		//Ϊ���������(worklite_todoing)����һ����������
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
	
	//�ڱ༭�������ύ֪ʶ���
	public void addExist_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
        //Ϊ֪ʶ��(worklite_knowledge)����һ��֪ʶ
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
	     //���´����������ļ�¼
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
	
	//����˹������ύ���ͨ��������
	public void issue_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
          //�޸�֪ʶ���֪ʶ״̬
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
	       //���´����������ļ�¼
	       String sql2 = "delete from worklite_todoing where wd_id=?";
	       jdbcTemplateObject.update(sql2, workliteknowledge.getKl_id());
		return;
	}	
	
	//����˹������ύ��˲�ͨ��
	public void rollback_Worklite_knowledge(WorkliteKnowledge workliteknowledge){
          //Ϊ֪ʶ��(worklite_knowledge)����һ��֪ʶ
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
	       //���´����������ļ�¼
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

	//��ѯ֪ʶ��ϸ
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
	//�޸�֪ʶ
	public void updateWorklite_knowledge(WorkliteKnowledge workliteknowledge) {

		String sql = "insert into worklite_knowledge values (?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteknowledge.getToken_id(), workliteknowledge
				.getToken_uass_name(), workliteknowledge.getToken_pwd(),workliteknowledge.getToken_pin(),workliteknowledge.getToken_location(),workliteknowledge.getToken_reg_time(),workliteknowledge.getToken_owner(),workliteknowledge.getToken_office(),workliteknowledge.getToken_remarks()
				,workliteknowledge.getToken_status());
	}
	
	//��ˡ��������˻�֪ʶ
	public void checkWorklite_knowledge(WorkliteKnowledge workliteknowledge) {

		String sql = "insert into worklite_knowledge values (?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, workliteknowledge.getToken_id(), workliteknowledge
				.getToken_uass_name(), workliteknowledge.getToken_pwd(),workliteknowledge.getToken_pin(),workliteknowledge.getToken_location(),workliteknowledge.getToken_reg_time(),workliteknowledge.getToken_owner(),workliteknowledge.getToken_office(),workliteknowledge.getToken_remarks()
				,workliteknowledge.getToken_status());
	}
	 * 
	 */
	   //������������ҳ��ѯ
	   public PageModelByIndication findByPage(int pageNo,int pageSize,WorkliteKnowledge workliteknowledge,
			   String begin_date, String end_date){
		   //���㿪ʼ��¼�ͽ�ֹ��¼
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL��䣺���ݿ�ʼ��¼�ͽ�ֹ��¼��ѯ��
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_knowledge where " +
		   		"kl_id like '"+workliteknowledge.getKl_id()+
		   		"' and kl_commit_person like '"+workliteknowledge.getKl_commit_person()+
		   		"' and kl_system like '"+workliteknowledge.getKl_system()+
		   		"' and kl_status like '"+workliteknowledge.getKl_status()+
		   		"' and ( kl_commit_time <= '"+end_date+
		   		"' and kl_commit_time >= '"+begin_date+
		   		"' ) order by kl_commit_time desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //ʹ��List������ݱ��¼
		   List<WorkliteKnowledge> list = jdbcTemplateObject.query(sql,new WorkliteKnowledgeMapper());
		   //����PageModel����
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
	        //����pageModel����
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
	   //ɾ��֪ʶ
	   public String deleteKnowledge(){
		   return "success";
	   }

	}
	//�޸�
	 * 
	 */
}
