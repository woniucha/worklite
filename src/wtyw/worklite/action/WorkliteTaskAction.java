package wtyw.worklite.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.common.Upload;
import wtyw.worklite.beans.WorkliteTask;
import wtyw.worklite.beans.WorkliteTaskHandler;
import wtyw.worklite.beans.WorkliteTaskEnclosure;
import wtyw.worklite.beans.WorkliteEstimateDetail;
import wtyw.worklite.beans.WorkliteRules;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteTaskAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	private WorkliteTask worklitetask;
	// 按条件查询时，指定发布开始时间和发布截止时间
	private String issue_begin_date;
	private String issue_end_date;
	private WorkliteTaskHandler worklitetaskhandler;
	private WorkliteTaskEnclosure worklitetaskenclosure;
	private String task_id;
	private List<String> task_handler;
	private List<File> file;
	private List<String> fileFileName;
	private WorkliteUserInfo workliteuserinfo;
	private List<WorkliteRules> rules_list;
	private WorkliteRules rules;
	private List<WorkliteEstimateDetail> estimate_list;
	private WorkliteEstimateDetail estimate;
	private List<DetailModel> handlerDMs;
	private DetailModel taskDM;
	private PageModelByIndication pageModel;
	private int pageNo;
	private int pageSize;
	private List<WorkliteTaskHandler> handler_list;
	private String checkbox1;
	

	public String getCheckbox1() {
		return checkbox1;
	}

	public void setCheckbox1(String checkbox1) {
		this.checkbox1 = checkbox1;
	}

	public List<WorkliteTaskHandler> getHandler_list() {
		return handler_list;
	}

	public void setHandler_list(List<WorkliteTaskHandler> handler_list) {
		this.handler_list = handler_list;
	}

	public WorkliteUserInfo queryUserInfo() {
		String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("userid"); 
		workliteuserinfo = userService.findByUserId(user_id);
		return workliteuserinfo;

	}

	public String addTask() throws Exception {

		worklitetask.setTask_issue_person_id(this.queryUserInfo().getUser_id());
		worklitetask.setTask_issue_person(this.queryUserInfo().getUser_name());
		if (file != null) {
			Upload up = new Upload();
			up.doUpload(file, fileFileName);
			taskService.addTask(worklitetask, task_handler, fileFileName);
			ServletActionContext.getRequest().setAttribute("message",
					"您的新任务发布成功，请及时跟进任务完成情况，并对任务客观评价");
			return "add_success";
		} else {
			this.fileFileName = null;
			taskService.addTask(worklitetask, task_handler, fileFileName);
			ServletActionContext.getRequest().setAttribute("message",
					"您的新任务发布成功，请及时跟进任务完成情况，并对任务客观评价");
			return "add_success";
		}
	}

	public String handleTask() throws Exception {
		worklitetaskhandler
				.setTask_handler(this.queryUserInfo().getUser_name());
		worklitetaskhandler.setTask_handler_id(this.queryUserInfo()
				.getUser_id());
		try {
			if (file != null) {
				Upload up = new Upload();
				up.doUpload(file, fileFileName);
				taskService.handlerTask(worklitetask, worklitetaskhandler,
						fileFileName);
				ServletActionContext.getRequest().setAttribute("message",
						"您的任务已处理完成，感谢您的对团队工作的支持，请及时跟踪任务评价");
			} else {
				this.fileFileName = null;
				taskService.handlerTask(worklitetask, worklitetaskhandler,
						fileFileName);
				ServletActionContext.getRequest().setAttribute("message",
						"您的任务已处理完成，感谢您的对团队工作的支持，请及时跟踪任务评价");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "handle_success";
	}

	// 评价列表
	public String toEstimateTask() throws Exception {
		System.out.println(worklitetaskhandler.getTask_handle_status());
		if (worklitetaskhandler.getTask_handle_status().equals("已评价")) {
			ServletActionContext.getRequest().setAttribute("message",
					"任务已经评价过，请不要重复评价");
			return "fail";
		} else {
			try {
				rules_list = taskService.toEstimateTask();
				return "toestimate1";
			} catch (Exception e) {
				e.printStackTrace();
				ServletActionContext.getRequest().setAttribute("message",
				"获取评分列表失败，请重试");
				return "fail";
			}
			
		}
	}

	// 任务评价
	public String estimateTask() {
		try {
			this.taskService.estimateTask(worklitetask, rules, estimate);
			return "estimate_success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "estimate_success";
	}

	// 评价详情
	public String toEstimateDetail() throws Exception {
		try {
			List<DetailModel> dm = taskService.toEstimateDetail(worklitetask
					.getTask_id(), worklitetaskhandler.getTask_handler());
			if (dm != null) {
				taskDM = dm.get(0);
				if (taskDM.getEstimate() != null) {
					estimate_list = taskDM.getEstimate();
				}
			}
			return "toestimatedetail";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "toestimatedetail";
	}

	// 按ID查询任务，并展示相应页面
	public String queryTaskDetail() throws Exception {
		String user_id = (String) this.session.get("userid");
		String loginUser_name = userService.findByUserId(user_id)
				.getUser_name();
		List<DetailModel> dm = taskService.queryTaskDetail(task_id,
				loginUser_name);
		taskDM = dm.get(0);
		handlerDMs = new ArrayList();
		for (int i = 1; i < dm.size(); i++) {
			handlerDMs.add(dm.get(i));
		}
		return taskDM.getMatchFlag();
	}

	// 分页查询所有任务
	// public String findByPage(){
	// pageModel = taskService.findByPage(pageNo, pageSize);
	// return "queryByPage_success";
	// }

	// 按条件分页查询任务
	
	//查询多人评价详情
	public String toEstimateTask1() throws Exception {
		try {
			
			//获取处理人列表
			handler_list = taskService.tohandler(worklitetask.getTask_id());
			//获取扣分项列表
			rules_list = taskService.toEstimateTask();
			return "toestimate2";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "toestimate2";
	}
	
	
	//多人评价
	public String estimateTask1() {
		try {		
			this.taskService.estimateTask1( rules, estimate,worklitetask.getTask_id(),checkbox1);
			return "estimate_success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "estimate_success";
	}
	
	
	
	
	public String findByCondition() throws UnsupportedEncodingException {
		pageModel = taskService.findByPage(pageNo, pageSize, worklitetask,
				issue_begin_date, issue_end_date);
		return "success_findByCondition";
	}

	public PageModelByIndication getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModelByIndication pageModel) {
		this.pageModel = pageModel;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public WorkliteTask getWorklitetask() {
		return worklitetask;
	}

	public void setWorklitetask(WorkliteTask worklitetask) {
		this.worklitetask = worklitetask;
	}

	public WorkliteTaskHandler getWorklitetaskhandler() {
		return worklitetaskhandler;
	}

	public void setWorklitetaskhandler(WorkliteTaskHandler worklitetaskhandler) {
		this.worklitetaskhandler = worklitetaskhandler;
	}

	public WorkliteTaskEnclosure getWorklitetaskenclosure() {
		return worklitetaskenclosure;
	}

	public void setWorklitetaskenclosure(
			WorkliteTaskEnclosure worklitetaskenclosure) {
		this.worklitetaskenclosure = worklitetaskenclosure;
	}

	public String getTask_id() {
		return task_id;
	}

	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}

	public List<String> getTask_handler() {
		return task_handler;
	}

	public void setTask_handler(List<String> task_handler) {
		this.task_handler = task_handler;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<DetailModel> getHandlerDMs() {
		return handlerDMs;
	}

	public void setHandlerDMs(List<DetailModel> handlerDMs) {
		this.handlerDMs = handlerDMs;
	}

	public DetailModel getTaskDM() {
		return taskDM;
	}

	public void setTaskDM(DetailModel taskDM) {
		this.taskDM = taskDM;
	}

	public List<WorkliteRules> getRules_list() {
		return rules_list;
	}

	public void setRules_list(List<WorkliteRules> rules_list) {
		this.rules_list = rules_list;
	}

	public WorkliteRules getRules() {
		return rules;
	}

	public void setRules(WorkliteRules rules) {
		this.rules = rules;
	}

	public List<WorkliteEstimateDetail> getEstimate_list() {
		return estimate_list;
	}

	public void setEstimate_list(List<WorkliteEstimateDetail> estimate_list) {
		this.estimate_list = estimate_list;
	}

	public WorkliteEstimateDetail getEstimate() {
		return estimate;
	}

	public void setEstimate(WorkliteEstimateDetail estimate) {
		this.estimate = estimate;
	}

	public String getIssue_begin_date() {
		return issue_begin_date;
	}

	public void setIssue_begin_date(String issue_begin_date) {
		this.issue_begin_date = issue_begin_date;
	}

	public String getIssue_end_date() {
		return issue_end_date;
	}

	public void setIssue_end_date(String issue_end_date) {
		this.issue_end_date = issue_end_date;
	}
}
