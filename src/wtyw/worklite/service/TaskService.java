package wtyw.worklite.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.beans.WorkliteTask;
import wtyw.worklite.beans.WorkliteTaskHandler;
import wtyw.worklite.beans.WorkliteTaskEnclosure;
import wtyw.worklite.beans.WorkliteEstimateDetail;
import wtyw.worklite.beans.WorkliteRules;
import wtyw.worklite.dao.WorkliteTaskDao;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.common.GenerateCurrentDate;

public class TaskService {
	
	private List<DetailModel> list;
	private WorkliteTask worklitetask;
	private WorkliteTaskDao workliteTaskDao;
	private WorkliteTaskEnclosure taskEnclosure;
	
	public void addTask(WorkliteTask task, List<String> task_handler,
			List<String> fileFileName) {
		HttpServletRequest request =ServletActionContext.getRequest();
		String userid=(String)request.getSession().getAttribute("userid");
		try {
			task.setTask_id(new GenerateID().generateTaskId());
			task.setTask_issue_date(new GenerateCurrentDate().getCurrentDate());
			task.setTask_type("һ������");
			task.setTask_status("������");
			taskEnclosure.setTask_id(task.getTask_id());
			taskEnclosure.setTask_upload_date(task.getTask_issue_date());
			taskEnclosure.setTask_upload_person(task.getTask_issue_person());
			taskEnclosure.setTask_upload_person_role("������");
			taskEnclosure.setTask_upload_person_id(task
					.getTask_issue_person_id());
			taskEnclosure.setTask_file_path("D:/upload/"+userid+"/");
			workliteTaskDao.addTask(task, task_handler, fileFileName,
					taskEnclosure);
		} catch (Exception e) {

		}
		return;
	}
	
	//������
	public void handlerTask(WorkliteTask task,
			WorkliteTaskHandler worklitetaskhandler, List<String> fileFileName)
			throws Exception {
		HttpServletRequest request =ServletActionContext.getRequest();
		String userid=(String)request.getSession().getAttribute("userid");
		worklitetaskhandler.setTask_handle_status("�����");
		worklitetaskhandler.setTask_handle_date(new GenerateCurrentDate()
				.getCurrentDate());
		// �����˸���
		if(fileFileName!=null){
		taskEnclosure.setTask_id(task.getTask_id());
		taskEnclosure.setTask_upload_date(new GenerateCurrentDate()
				.getCurrentDate());
		taskEnclosure.setTask_upload_person(worklitetaskhandler
				.getTask_handler());
		taskEnclosure.setTask_upload_person_role("������");
		taskEnclosure.setTask_upload_person_id(worklitetaskhandler
				.getTask_handler_id());
		taskEnclosure.setTask_file_path("D:/upload/"+userid+"/");
		}
		workliteTaskDao.handlerTask(worklitetask, worklitetaskhandler,
				fileFileName, taskEnclosure);
		
	}
	
	// ����task_ID��ѯ��ϸ�����Բ�ͬ�û�չʾ��ͬ�������
	public List<DetailModel> queryTaskDetail(String task_id, String loginUser_name) {		
		this.list = new ArrayList();
		DetailModel taskDM = this.assembleTask(task_id);
		worklitetask = workliteTaskDao.queryTaskDetail(task_id);
		if (worklitetask.getTask_status().equals("������"))
		{
			WorkliteTaskHandler handler = workliteTaskDao.queryTaskHandler(task_id, loginUser_name);
			if (handler == null)
			{
				taskDM.setMatchFlag("toquery");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}else if(handler.getTask_handle_status().equals("�����"))
			{
				taskDM.setMatchFlag("toquery");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}else
			{
				taskDM.setMatchFlag("tohandle");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}
		}else if(worklitetask.getTask_status().equals("�����"))
		{
			if (worklitetask.getTask_issue_person().equals(loginUser_name))
			{
				taskDM.setMatchFlag("toestimate");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}else
			{
				taskDM.setMatchFlag("toquery");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}	
		}else
		{
			taskDM.setMatchFlag("toquery");
			list.add(taskDM);
			this.assembleTaskHandler(task_id);
			return list;
		}
	}
	
	//����task_id��ѯ�����͸�������װtask��Ϣ�ͷ����˸���Ϊһ�����󣬷��ظ�JSP����
	private DetailModel assembleTask(String task_id){
		
		DetailModel dm = new DetailModel();
		WorkliteTask task = workliteTaskDao.queryTaskDetail(task_id);
		//������������id�ͷ�����������ȥ�������ѯ������upload�ĸ���
		List<WorkliteTaskEnclosure> wte = workliteTaskDao.queryTaskEnclosuresIssue(task_id, task.getTask_issue_person());
		     if(wte != null && !wte.isEmpty()){
					dm.setWorklitetask(task);
					dm.setWorklitetaskenclosures(wte);
				    return dm;
			 }else
			 {
					dm.setWorklitetask(task);
					return dm;
			 }
	}
	
	//����task_id��ѯ�����˱�͸�������װhandler��Ϣ��handler��Ӧ�ĸ���Ϊһ�����󣬷��ظ�JSP����
	private void assembleTaskHandler(String task_id){
		List<WorkliteTaskHandler> handlers = workliteTaskDao.queryTaskHandlers(task_id);
		if(!handlers.equals(null)){
			for(int i=0; i<handlers.size();i++){
				List<WorkliteTaskEnclosure> wte = workliteTaskDao.queryTaskEnclosuresHandler(task_id, handlers.get(i).getTask_handler());
				DetailModel dm = new DetailModel();
				dm.setWorklitetaskhandler(handlers.get(i));
				dm.setWorklitetaskenclosures(wte);
				this.list.add(dm);
			}
		}
	}
	
	// �����б�
	public List<WorkliteRules> toEstimateTask() throws Exception {
		List<WorkliteRules> rules_list = workliteTaskDao.toEstimateTask();
		return rules_list;
	}

	// ��������

	public void estimateTask(WorkliteTask task, WorkliteRules rules,
			WorkliteEstimateDetail estimate) throws Exception {
		workliteTaskDao.estimateTask(task, rules, estimate);
	}

	// ��������
	public List<DetailModel> toEstimateDetail(String task_id, String handler)
			throws Exception {
		this.list = new ArrayList<DetailModel>();
		DetailModel taskDM = new DetailModel();
		List<WorkliteEstimateDetail> ets = workliteTaskDao.toEstimateDetail(
				task_id, handler);
		WorkliteTaskHandler hander = workliteTaskDao.queryTaskHandler(task_id,
				handler);
		if (ets != null) {
			taskDM.setWorklitetaskhandler(hander);
			taskDM.setEstimate(ets);
			this.list.add(taskDM);
			return list;
		}
		if (!hander.equals("") && hander != null) {
			taskDM.setWorklitetaskhandler(hander);
			this.list.add(taskDM);
			return list;
		}
		return null;
	}
	
	//��ҳ��ѯ
	public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteTask worklitetask,
			String begin, String end) {		
		if(worklitetask.getTask_id().equals("")){
			worklitetask.setTask_id("%%");
        }
		if(worklitetask.getTask_issue_person().equals("")){
			worklitetask.setTask_issue_person("%%");
        }
		if(worklitetask.getTask_title().equals("")){
			worklitetask.setTask_title("%%");
        }
		if(worklitetask.getTask_status().equals("")){
			worklitetask.setTask_status("%%");
        }
        if(begin.equals("")){
        	begin = "0000-00-00";
        }
        if(end.equals("")){
        	end = "9999-99-99";
        } 
        return workliteTaskDao.findByPage(pageNo, pageSize, worklitetask, begin, end);   
        
	}
	
	
	
	public List<WorkliteTaskHandler> tohandler(String task_id) throws Exception {
		List<WorkliteTaskHandler> handler_list = workliteTaskDao.tohandler(task_id);
		return handler_list;
	}
	
	
	public void estimateTask1( WorkliteRules rules,
			WorkliteEstimateDetail estimate,String task_id,String checkbox1) throws Exception {
		workliteTaskDao.estimateTask1( rules, estimate,task_id,checkbox1);
	}

	
	public void toUpload(String task_id,String file_name,String file_path) throws Exception{
		workliteTaskDao.toUpload(task_id,file_name,file_path);
	}

	public WorkliteTaskDao getWorkliteTaskDao() {
		return workliteTaskDao;
	}

	public void setWorkliteTaskDao(WorkliteTaskDao workliteTaskDao) {
		this.workliteTaskDao = workliteTaskDao;
	}

	public WorkliteTaskEnclosure getTaskEnclosure() {
		return taskEnclosure;
	}

	public void setTaskEnclosure(WorkliteTaskEnclosure taskEnclosure) {
		this.taskEnclosure = taskEnclosure;
	}

}
