package wtyw.worklite.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import wtyw.worklite.beans.WorkliteTask;
import wtyw.worklite.beans.WorkliteTaskHandler;
import wtyw.worklite.beans.WorkliteTaskEnclosure;
import wtyw.worklite.beans.WorkliteEstimateDetail;
import wtyw.worklite.beans.WorkliteRules;
import wtyw.worklite.mapper.WorkliteTaskMapper;
import wtyw.worklite.mapper.WorkliteTaskHandlerMapper;
import wtyw.worklite.mapper.WorkliteTaskEnclosureMapper;
import wtyw.worklite.mapper.WorkliteEstimateDetailMapper;
import wtyw.worklite.mapper.WorkliteRulesMapper;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteTaskDao {

	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;

	// ָ�����ݿ�
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}

	public void addTask(WorkliteTask task, List<String> taskHandlerName,
			List<String> fileFileName, WorkliteTaskEnclosure taskEnclosure) {

		// ����һ������
		String sql = "insert into worklite_task (" + "TASK_ID," + "TASK_TITLE,"
				+ "TASK_TYPE," + "TASK_BEGIN_DATE," + "TASK_END_DATE,"
				+ "TASK_ISSUE_DATE," + "TASK_ISSUE_PERSON,"
				+ "TASK_ISSUE_PERSON_ID," + "TASK_PRIORITY," + "TASK_DESC,"
				+ "TASK_STATUS) " + "values" + " (?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, task.getTask_id(), task.getTask_title(),
				task.getTask_type(), task.getTask_begin_date(), task
						.getTask_end_date(), task.getTask_issue_date(), task
						.getTask_issue_person(),
				task.getTask_issue_person_id(), task.getTask_priority(), task
						.getTask_desc(), task.getTask_status());

		for (int i = 0; i < taskHandlerName.size(); i++) {
			// ���´����������ļ�¼
			String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
			jdbcTemplateObject.update(sql2, task.getTask_id(), task
					.getTask_title(), task.getTask_status(), task
					.getTask_issue_date(), taskHandlerName.get(i), task
					.getTask_priority());
			// ���Ӵ����˱�
			String sql3 = "insert into worklite_task_handler (" + "task_id,"
					+ "task_handler," + "task_handle_status"
					+ ") values (?,?,?)";
			jdbcTemplateObject.update(sql3, task.getTask_id(), taskHandlerName
					.get(i), task.getTask_status());
		}
		// ���Ӹ�����
		if (fileFileName != null) {
			for (int k = 0; k < fileFileName.size(); k++) {
				String sql4 = "insert into worklite_task_enclosure values (?,?,?,?,?,?,?)";
				jdbcTemplateObject.update(sql4, taskEnclosure.getTask_id(),
						taskEnclosure.getTask_upload_person(), taskEnclosure
								.getTask_upload_date(), fileFileName.get(k),
						taskEnclosure.getTask_upload_person_role(),
						taskEnclosure.getTask_upload_person_id(),
						taskEnclosure.getTask_file_path()
						);
			}
		}
		return;
	}

	// ������
	public void handlerTask(WorkliteTask worklitetask,
			WorkliteTaskHandler worklitetaskhandler, List<String> fileFileName,
			WorkliteTaskEnclosure taskEnclosure) {
		int total_task_count = 0;
		int finish_count = 0;
		try {
			// ��һ�������³а�������״̬Ϊ�����
			String sql1 = "update WORKLITE_TASK_HANDLER set "
					+ "TASK_HANDLER_OPINION=?," + "TASK_HANDLE_STATUS=?,"
					+ "TASK_HANDLE_DATE=? "
					+ "where TASK_ID = ? and TASK_HANDLER = ?";
			jdbcTemplateObject.update(sql1, worklitetaskhandler
					.getTask_handler_opinion(), worklitetaskhandler
					.getTask_handle_status(), worklitetaskhandler
					.getTask_handle_date(), worklitetask.getTask_id(),
					worklitetaskhandler.getTask_handler());
			// �ڶ��������Ӿ����˸���
			if (fileFileName != null) {
				for (int k = 0; k < fileFileName.size(); k++) {
					String sql2 = "insert into worklite_task_enclosure values (?,?,?,?,?,?,?)";
					jdbcTemplateObject.update(sql2, taskEnclosure.getTask_id(),
							taskEnclosure.getTask_upload_person(),
							taskEnclosure.getTask_upload_date(), fileFileName
									.get(k), taskEnclosure
									.getTask_upload_person_role(),
							taskEnclosure.getTask_upload_person_id(),
							taskEnclosure.getTask_file_path());
				}
			}
			// ��������ɾ���óа��˴���������¼
			String sql5 = "delete from WORKLITE_TODOING WHERE WD_ID = ? AND WD_PERSON  = ?";
			jdbcTemplateObject.update(sql5, worklitetask.getTask_id(),
					worklitetaskhandler.getTask_handler());

			// ���Ĳ���������������״̬�����Ȳ����������м�����¼
			String sql_total = "select count(1) from  WORKLITE_TASK_HANDLER where  TASK_ID ="
					+ "'" + worklitetask.getTask_id() + "'";
			total_task_count = jdbcTemplateObject.queryForInt(sql_total);
			// ���������������м�����¼
			String sql_fnsh = "select count(1) from  WORKLITE_TASK_HANDLER where TASK_HANDLE_STATUS ='�����' and TASK_ID = "
					+ "'" + worklitetask.getTask_id() + "'";
			finish_count = jdbcTemplateObject.queryForInt(sql_fnsh);
			// һ�������Ӧ������񣬵����д�������������ɺ�������Ϣ��worklite_task������״̬��Ϊ�����,
			if (total_task_count == finish_count) {
				// ���га��˶���ɣ����·�������״̬Ϊ�����
				String sql3 = "update WORKLITE_TASK set " + "TASK_STATUS = ?,"
						+ "TASK_COMPLETE_DATE = ? " + "where TASK_ID = ?";
				jdbcTemplateObject.update(sql3, "�����", worklitetaskhandler
						.getTask_handle_date(), worklitetask.getTask_id());

				// ͬʱ�����񷢲�������һ����������
				WorkliteTask task = this.queryTaskDetail(worklitetask
						.getTask_id());
				String sql4 = "insert into worklite_todoing values(?,?,?,?,?,?)";
				jdbcTemplateObject.update(sql4, task.getTask_id(), task
						.getTask_title(), task.getTask_status(), task
						.getTask_issue_date(), task.getTask_issue_person(),
						task.getTask_priority());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �����б�
	public List<WorkliteRules> toEstimateTask() {
		List<WorkliteRules> rules_list = null;
		String sql = "select * from worklite_rules where 1=1";
		try {
			rules_list = jdbcTemplateObject.query(sql,
					new WorkliteRulesMapper());
			return rules_list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// ��������
	public List<WorkliteEstimateDetail> toEstimateDetail(String task_id,
			String handler) {
		List<WorkliteEstimateDetail> estimatedetail_list = null;
		String sql1 = "select * from WORKLITE_ESTIMATE_DETAIL where 1=1 and task_id = ? and user_id = ?";
		try {
			estimatedetail_list = jdbcTemplateObject.query(sql1, new Object[] {
					task_id, handler }, new WorkliteEstimateDetailMapper());
			if (estimatedetail_list.isEmpty()) {
				return null;
			} else {
				return estimatedetail_list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// �����ܿ۷���
	public int toQueryEstimateTask(String ruleid) {
		if (ruleid != "" && ruleid != null) {
			ruleid = "(" + ruleid.replaceAll(" ", "") + ")";
			String sql1 = "select sum(REMARK1) from worklite_rules where rule_id in "
					+ ruleid;
			int scores = jdbcTemplateObject.queryForInt(sql1);
			return scores;
		}
		return 0;
	}

	// ����rule_id��ѯ�����б�
	public List<WorkliteRules> toQuery(WorkliteRules rules) {
		List<WorkliteRules> rules_list = null;
		String ruleid = "(" + (rules.getRule_id()).replaceAll(" ", "") + ")";
		String sql1 = "select * from worklite_rules where rule_id in " + ruleid;
		try {
			rules_list = jdbcTemplateObject.query(sql1,
					new WorkliteRulesMapper());
			;
			return rules_list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// ����
	public void estimateTask(WorkliteTask worklitetask, WorkliteRules rules,
			WorkliteEstimateDetail estimate) throws Exception {
		int total_task_count = 0;
		int finish_count = 0;
		List<WorkliteRules> list = null;
		try {
			// ��һ�����³а������״̬,���³а��˵÷�,�����������
			int scores = this.toQueryEstimateTask(rules.getRule_id());
			String estimate_scores = Integer.toString(100 - scores);
			String sql1 = "update WORKLITE_TASK_HANDLER set "
					+ "TASK_HANDLE_STATUS=?," + "TASK_HANDLE_ESTIMATE=?,"
					+ "TASK_HANDLE_ESTIMATE_SCORE=?"
					+ "where TASK_ID = ? and TASK_HANDLER = ?";
			jdbcTemplateObject.update(sql1, "������", rules.getRemark2(),
					estimate_scores, worklitetask.getTask_id(), estimate
							.getUser_id());

			// �ڶ��������������������������� ����id,�а���id
			String sql2 = "insert into WORKLITE_ESTIMATE_DETAIL values(?,?,?,?,?,?)";
			if (rules.getRule_id() != "" & null != rules.getRule_id()) {
				list = this.toQuery(rules);
				for (int j = 0; j < list.size(); j++) {
					rules = list.get(j);
					jdbcTemplateObject.update(sql2, worklitetask.getTask_id(),
							estimate.getUser_id(), rules.getRule_id(), rules
									.getRule_detail(), rules.getRemark1(),
							estimate.getMark2());
				}
			}

			// �������жϴ��������га��˶������꣬���������״̬-�ѹر�

			String sql_total = "select count(1) from  WORKLITE_TASK_HANDLER where  TASK_ID ="
					+ "'" + worklitetask.getTask_id() + "'";
			total_task_count = jdbcTemplateObject.queryForInt(sql_total);

			// ���������������м�����¼
			String sql_fnsh = "select count(1) from  WORKLITE_TASK_HANDLER where TASK_HANDLE_STATUS ='������' and TASK_ID = "
					+ "'" + worklitetask.getTask_id() + "'";
			finish_count = jdbcTemplateObject.queryForInt(sql_fnsh);

			System.out.println(total_task_count);
			System.out.println(finish_count);

			// һ�������Ӧ����а��ˣ��������˽����га���������󣬸���������Ϣ��worklite_task������״̬��Ϊ�ѹر�,
			if (total_task_count == finish_count) {
				String sql3 = "update WORKLITE_TASK set TASK_STATUS = ? where TASK_ID = ?";
				jdbcTemplateObject.update(sql3, "�ѹر�", worklitetask
						.getTask_id());
				// ����ɾ�����촦�������¼
				String sql4 = "delete from WORKLITE_TODOING WHERE WD_ID = ?";
				jdbcTemplateObject.update(sql4, worklitetask.getTask_id());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	//��ȡͬһ�������д�����
	public List<WorkliteTaskHandler> tohandler(String task_id) {
		List<WorkliteTaskHandler> handler_list = null;
		String sql = "select * from WORKLITE_TASK_HANDLER where 1=1 and task_id="+"'"+task_id+"'";
		try {
			handler_list = jdbcTemplateObject.query(sql,new WorkliteTaskHandlerMapper());
			return handler_list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//��������
		public void estimateTask1( WorkliteRules rules,
				WorkliteEstimateDetail estimate,String task_id,String checkbox1) throws Exception {
			List<WorkliteTaskHandler> handlers_list = null;
			List<String> list0=new ArrayList<String>();
			handlers_list=tohandler(task_id);
			for(int i=0;i<handlers_list.size();i++){
				list0.add(handlers_list.get(i).getTask_handler());
			}
			
		    String sql2 = "insert into WORKLITE_ESTIMATEDETAIL values(?,?,?,?,?,?)";
			List<String> list1=new ArrayList<String>();
			List<String> list2=new ArrayList<String>();
			List<String> list3=new ArrayList<String>();
			List<String> list4=new ArrayList<String>();
			List<String> list5=new ArrayList<String>();
			List<String> list6=new ArrayList<String>();
			List<String> list7=new ArrayList<String>();
			List<String> list8=new ArrayList<String>();
			
			//����chkbox=��ʮ��1,ʮ��2,����3,����4��ȥ���ո�
			
			
			System.out.println(checkbox1);
			//���ַ��������ַ�������arr��
			if(checkbox1!=null){
				String checkbox=checkbox1.replaceAll(" ", "");
				String[] arr=checkbox.split(",");
				for(int i=0;i<arr.length;i++){
					//�ж����һλ�Ƿ����1��������1��ԭֵȥ��1�����뵽list1��
					
					if("1".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list1.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("2".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list2.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("3".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list3.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("4".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list4.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("5".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list5.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("6".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list6.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("7".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list7.add(arr[i].substring(0, arr[i].length()-1));
					}
					if("8".equals(arr[i].substring(arr[i].length()-1, arr[i].length()))){
						list8.add(arr[i].substring(0, arr[i].length()-1));
					}
			     }
		   }
				
			
			//��list1�д����˵Ŀ۷�������� WORKLITE_ESTIMATE_DETAIL����
			if(list1!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 1";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list1.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list1.get(j), "1", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			if(list2!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 2";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list2.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list2.get(j), "2", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list3!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 3";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list3.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list3.get(j), "3", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list4!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 4";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list4.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list4.get(j), "4", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list5!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 5";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list5.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list5.get(j), "5", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list6!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 6";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list6.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list6.get(j), "6", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list7!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 7";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list7.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list7.get(j), "7", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
			
			if(list8!=null){
				List<WorkliteRules> rules_list = null;
				String sql1 = "select * from worklite_rules where rule_id = 8";
				rules_list = jdbcTemplateObject.query(sql1,new WorkliteRulesMapper());
				for(int j=0;j<list8.size();j++){
					for(int i=0;i<rules_list.size();i++){
						rules=rules_list.get(i);
						jdbcTemplateObject.update(sql2, task_id,
							list8.get(j), "8", rules.getRule_detail(), 
							rules.getRemark1(),estimate.getMark2());
					}
				}
			}
		
		  //���³а������״̬,���³а��˵÷�
		  for(int i=0;i<list0.size();i++){
			  String sql="select sum(mark1) from WORKLITE_ESTIMATE_DETAIL where task_id="+"'"+task_id+"'"+" and user_id ="+"'"+list0.get(i)+"'";
			  int scores = jdbcTemplateObject.queryForInt(sql);
			  String estimate_scores = Integer.toString(100 - scores);
			  String sql0 = "update WORKLITE_TASK_HANDLER set "
					+ "TASK_HANDLE_STATUS=?," 
					+ "TASK_HANDLE_ESTIMATE_SCORE=?"
					+ "where TASK_ID = ? and TASK_HANDLER = ?";
			  jdbcTemplateObject.update(sql0, "������", estimate_scores,
					  			        task_id, list0.get(i));
		  }
		  
		  //���������,����״̬Ϊ"�ѹر�"
		  String sql3 = "update WORKLITE_TASK set TASK_STATUS = ? where TASK_ID = ?";
			jdbcTemplateObject.update(sql3, "�ѹر�", task_id);
		//ɾ�����촦�������¼
		  String sql4 = "delete from WORKLITE_TODOING WHERE WD_ID = ?";
		    jdbcTemplateObject.update(sql4, task_id);
			
		//����б�������ֵ	
	    list0.removeAll(list0);
	    list1.removeAll(list1);
	    list2.removeAll(list2);
	    list3.removeAll(list3);
	    list4.removeAll(list4);
	    list5.removeAll(list5);
	    list6.removeAll(list6);
	    list7.removeAll(list7);
	    list8.removeAll(list8);
		}
	

	public void toUpload(String task_id, String file_name, String file_path)
			throws Exception {
		String sql = "insert into worklite_task_enclosure(task_id,task_file_name,task_file_path) values(?,?,?)";
		try {
			String[] filenames = (file_name.replaceAll(" ", "")).split(",");
			for (int i = 0; i < filenames.length; i++) {
				jdbcTemplateObject
						.update(sql, task_id, filenames[i], file_path);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ��ѯ��ϸ
	public WorkliteTask queryTaskDetail(String task_id) {
		WorkliteTask task;
		String sql = "select * from worklite_task where task_id = ?";
		List<WorkliteTask> list = jdbcTemplateObject.query(sql,
				new Object[] { task_id }, new WorkliteTaskMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			task = list.get(0);
			return task;
		}
	}

	// ��ѯ���񾭰��˱����ص���handler
	public WorkliteTaskHandler queryTaskHandler(String task_id,
			String loginUser_name) {
		WorkliteTaskHandler taskHandler;
		String sql = "select * from worklite_task_handler where task_id = ? and task_handler = ?";
		List<WorkliteTaskHandler> list = jdbcTemplateObject.query(sql,
				new Object[] { task_id, loginUser_name },
				new WorkliteTaskHandlerMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			taskHandler = list.get(0);
			return taskHandler;
		}
	}

	// ��ѯ���񾭰��˱�����handler list
	public List<WorkliteTaskHandler> queryTaskHandlers(String task_id) {
		String sql = "select * from worklite_task_handler where task_id = ?";
		List<WorkliteTaskHandler> handlers = jdbcTemplateObject.query(sql,
				new Object[] { task_id }, new WorkliteTaskHandlerMapper());
		if (handlers.isEmpty()) {
			return null;
		} else {
			return handlers;
		}
	}

	// ��ѯ���񸽼�������enclosure list
	public List<WorkliteTaskEnclosure> queryTaskEnclosuresIssue(String task_id,
			String uploadperson) {
		String issue="������";
		String sql = "select * from worklite_task_enclosure where task_id = ? and task_upload_person = ? and TASK_UPLOAD_PERSON_ROLE = ?";
		List<WorkliteTaskEnclosure> enclosures = jdbcTemplateObject.query(sql,
				new Object[] { task_id, uploadperson,issue },
				new WorkliteTaskEnclosureMapper());
		if (enclosures.isEmpty()) {
			return null;
		} else {
			return enclosures;
		}
	}
	
	public List<WorkliteTaskEnclosure> queryTaskEnclosuresHandler(String task_id,
			String uploadperson) {
		String handler="������";
		String sql = "select * from worklite_task_enclosure where task_id = ? and task_upload_person = ? and TASK_UPLOAD_PERSON_ROLE = ?";
		List<WorkliteTaskEnclosure> enclosures = jdbcTemplateObject.query(sql,
				new Object[] { task_id, uploadperson ,handler},
				new WorkliteTaskEnclosureMapper());
		if (enclosures.isEmpty()) {
			return null;
		} else {
			return enclosures;
		}
	}

	// ��ҳ��ѯ
	public PageModelByIndication findByPage(int pageNo, int pageSize,
			WorkliteTask worklitetask, String issue_begin_date,
			String issue_end_date) {

		// ���㿪ʼ��¼�ͽ�ֹ��¼
		int begin = (pageNo - 1) * pageSize + 1;
		int end = (pageNo - 1) * pageSize + 10;
		// SQL��䣺���ݿ�ʼ��¼�ͽ�ֹ��¼��ѯ��
		String sql = "select * from (select a.*,rownum rn from (select * from worklite_task where "
				+ "task_id like '"
				+ worklitetask.getTask_id()
				+ "' and task_status like '"
				+ worklitetask.getTask_status()
				+ "' and task_issue_person like '"
				+ worklitetask.getTask_issue_person()
				+ "' and task_title like '"
				+ worklitetask.getTask_title()
				+ "' and ( task_issue_date <= '"
				+ issue_end_date
				+ "' and task_issue_date >= '"
				+ issue_begin_date
				+ "' ) order by task_issue_date desc) a where rownum <= "
				+ end
				+ " ) where rn >= " + begin;
		// ʹ��List������ݱ��¼
		List<WorkliteTask> list = jdbcTemplateObject.query(sql,
				new WorkliteTaskMapper());
		// ����PageModel����
		PageModelByIndication pageModel = new PageModelByIndication();
		pageModel.setPageNo(pageNo);
		pageModel.setTotalRecords(getTotalRecords(worklitetask,
				issue_begin_date, issue_end_date));
		pageModel.setPageSize(pageSize);
		if (worklitetask.getTask_id().equals("%%")) {
			worklitetask.setTask_id("");
		}
		if (worklitetask.getTask_issue_person().equals("%%")) {
			worklitetask.setTask_issue_person("");
		}
		if (worklitetask.getTask_title().equals("%%")) {
			worklitetask.setTask_title("");
		}
		if (worklitetask.getTask_status().equals("%%")) {
			worklitetask.setTask_status("");
		}
		pageModel.setWorklitetask(worklitetask);
		pageModel.setIssue_begin_date(issue_begin_date);
		pageModel.setIssue_end_date(issue_end_date);
		pageModel.setList(list);
		// ����pageModel����
		return pageModel;
	}

	private int getTotalRecords(WorkliteTask worklitetask,
			String issue_begin_date, String issue_end_date) {
		String sql = "select count(task_id) from worklite_task where "
				+ "task_id like '" + worklitetask.getTask_id()
				+ "' and task_status like '" + worklitetask.getTask_status()
				+ "' and task_issue_person like '"
				+ worklitetask.getTask_issue_person()
				+ "' and task_title like '" + worklitetask.getTask_title()
				+ "' and ( task_issue_date <= '" + issue_end_date
				+ "' and task_issue_date >= '" + issue_begin_date + "')";
		int totalRecords = jdbcTemplateObject.queryForInt(sql);
		return (totalRecords);
	}
}
