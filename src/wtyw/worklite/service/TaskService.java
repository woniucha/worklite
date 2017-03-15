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
			task.setTask_type("一般任务");
			task.setTask_status("处理中");
			taskEnclosure.setTask_id(task.getTask_id());
			taskEnclosure.setTask_upload_date(task.getTask_issue_date());
			taskEnclosure.setTask_upload_person(task.getTask_issue_person());
			taskEnclosure.setTask_upload_person_role("发布人");
			taskEnclosure.setTask_upload_person_id(task
					.getTask_issue_person_id());
			taskEnclosure.setTask_file_path("D:/upload/"+userid+"/");
			workliteTaskDao.addTask(task, task_handler, fileFileName,
					taskEnclosure);
		} catch (Exception e) {

		}
		return;
	}
	
	//任务处理
	public void handlerTask(WorkliteTask task,
			WorkliteTaskHandler worklitetaskhandler, List<String> fileFileName)
			throws Exception {
		HttpServletRequest request =ServletActionContext.getRequest();
		String userid=(String)request.getSession().getAttribute("userid");
		worklitetaskhandler.setTask_handle_status("已完成");
		worklitetaskhandler.setTask_handle_date(new GenerateCurrentDate()
				.getCurrentDate());
		// 处理人附件
		if(fileFileName!=null){
		taskEnclosure.setTask_id(task.getTask_id());
		taskEnclosure.setTask_upload_date(new GenerateCurrentDate()
				.getCurrentDate());
		taskEnclosure.setTask_upload_person(worklitetaskhandler
				.getTask_handler());
		taskEnclosure.setTask_upload_person_role("经办人");
		taskEnclosure.setTask_upload_person_id(worklitetaskhandler
				.getTask_handler_id());
		taskEnclosure.setTask_file_path("D:/upload/"+userid+"/");
		}
		workliteTaskDao.handlerTask(worklitetask, worklitetaskhandler,
				fileFileName, taskEnclosure);
		
	}
	
	// 根据task_ID查询明细，并对不同用户展示不同处理界面
	public List<DetailModel> queryTaskDetail(String task_id, String loginUser_name) {		
		this.list = new ArrayList();
		DetailModel taskDM = this.assembleTask(task_id);
		worklitetask = workliteTaskDao.queryTaskDetail(task_id);
		if (worklitetask.getTask_status().equals("处理中"))
		{
			WorkliteTaskHandler handler = workliteTaskDao.queryTaskHandler(task_id, loginUser_name);
			if (handler == null)
			{
				taskDM.setMatchFlag("toquery");
				list.add(taskDM);
				this.assembleTaskHandler(task_id);
				return list;
			}else if(handler.getTask_handle_status().equals("已完成"))
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
		}else if(worklitetask.getTask_status().equals("已完成"))
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
	
	//根据task_id查询任务表和附件表，组装task信息和发布人附件为一个对象，返回给JSP对象
	private DetailModel assembleTask(String task_id){
		
		DetailModel dm = new DetailModel();
		WorkliteTask task = workliteTaskDao.queryTaskDetail(task_id);
		//根据任务表里的id和发布人姓名，去附件表查询发布人upload的附件
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
	
	//根据task_id查询经办人表和附件表，组装handler信息和handler对应的附件为一个对象，返回给JSP对象
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
	
	// 评价列表
	public List<WorkliteRules> toEstimateTask() throws Exception {
		List<WorkliteRules> rules_list = workliteTaskDao.toEstimateTask();
		return rules_list;
	}

	// 评价任务

	public void estimateTask(WorkliteTask task, WorkliteRules rules,
			WorkliteEstimateDetail estimate) throws Exception {
		workliteTaskDao.estimateTask(task, rules, estimate);
	}

	// 评价详情
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
	
	//分页查询
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
