package wtyw.worklite.action;

import java.io.File;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.beans.WorkliteVacation;
import wtyw.worklite.common.Upload;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.service.VacationService;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteVacationAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	private WorkliteVacation worklitevacation;
	private WorkliteUserInfo workliteuserinfo;
	private VacationService vacationService;
	private PageModel pageModel;
	private PageModelByIndication pagemodebyindication;
	private int pageNo;
	private int pageSize;
	private String verifyResult;
	private List<File> file;
	private List<String> fileFileName;
	private Upload uploadtest;
	private String vacation_id;
	
	public String queryUserInfo(){
		String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("userid"); 
		workliteuserinfo = userService.findByUserId(user_id);
		return "queryUserInfo_success";
		
	}
		
	//提交假期审核
	public String applyVacation() throws Exception {
		worklitevacation.setVacation_userid(workliteuserinfo.getUser_id());
		worklitevacation.setVacation_person(workliteuserinfo.getUser_name());
		worklitevacation.setVacation_post(workliteuserinfo.getUser_post());
		worklitevacation.setVacation_corporation(workliteuserinfo.getUser_corporation());
		worklitevacation.setVacation_project(workliteuserinfo.getUser_project());
		worklitevacation.setVacation_already_day_num(workliteuserinfo.getUser_already_day_num());
		vacationService.applyWorklite_vacation(worklitevacation);
		ServletActionContext.getRequest().setAttribute("message", 
				"请假单已成功提交公司审批人，请及时关注审批结果！！！！！");
		return "apply_success";
	}
	
	
	public String queryVacationDetail() throws Exception {
		String user_id = (String)this.session.get("userid");
		String loginUser_name = userService.findByUserId(user_id).getUser_name();
		DetailModel dm = vacationService.queryVacationDetail(vacation_id,loginUser_name);
		worklitevacation = dm.getWorkliteVacation();
		String toDoing_flag = dm.getMatchFlag();
		return toDoing_flag;
	}
	
	//公司审核
	public String verifyVacationByCorp() throws Exception {
		
		if(verifyResult.equals("pass")){
			vacationService.verifyVacationByCorp(worklitevacation,verifyResult);
			ServletActionContext.getRequest().setAttribute("message", 
			"请假单通过审批，请继续其他操作！！！！！");
			return "verifyByCorp_success";
		}else
		{
			vacationService.verifyVacationByCorp(worklitevacation,verifyResult);
			ServletActionContext.getRequest().setAttribute("message", 
			"请假单未通过审批，请继续其他操作！！！！！");
			return "verifyByCorp_fail";
		}
	}
	
	//行方审核
	public String verifyVacationByBank() throws Exception {
		
		if(verifyResult.equals("pass")){
			vacationService.verifyVacationByBank(worklitevacation,verifyResult);
			ServletActionContext.getRequest().setAttribute("message", 
			"请假单通过审批，请继续其他操作！！！！！");
			return "verifyByBank_success";
		}else
		{
			vacationService.verifyVacationByBank(worklitevacation,verifyResult);
			ServletActionContext.getRequest().setAttribute("message", 
			"请假单未通过审批，请继续其他操作！！！！！");
			return "verifyByBank_fail";
		}
	}
	
	//分页查询
	public String findByPage(){
		System.out.println(worklitevacation.getVacation_corporation()+"cor");
		pagemodebyindication = vacationService.findvacationByPage(pageNo, pageSize,worklitevacation);
		return "query_all_success";
	}

	public WorkliteVacation getWorklitevacation() {
		return worklitevacation;
	}

	public void setWorklitevacation(WorkliteVacation worklitevacation) {
		this.worklitevacation = worklitevacation;
	}

	public VacationService getVacationService() {
		return vacationService;
	}

	public void setVacationService(VacationService vacationService) {
		this.vacationService = vacationService;
	}

	public PageModel getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel pageModel) {
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
	public WorkliteUserInfo getWorkliteuserinfo() {
		return workliteuserinfo;
	}
	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
	}
	public String getVerifyResult() {
		return verifyResult;
	}
	public void setVerifyResult(String verifyResult) {
		this.verifyResult = verifyResult;
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
	public Upload getUploadtest() {
		return uploadtest;
	}

	public void setUploadtest(Upload uploadtest) {
		this.uploadtest = uploadtest;
	}

	public String getVacation_id() {
		return vacation_id;
	}

	public void setVacation_id(String vacation_id) {
		this.vacation_id = vacation_id;
	}

	public PageModelByIndication getPagemodebyindication() {
		return pagemodebyindication;
	}

	public void setPagemodebyindication(PageModelByIndication pagemodebyindication) {
		this.pagemodebyindication = pagemodebyindication;
	}	

}
