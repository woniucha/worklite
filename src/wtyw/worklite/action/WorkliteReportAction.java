package wtyw.worklite.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import wtyw.worklite.beans.WorkliteReportMonth;
import wtyw.worklite.beans.WorkliteReportWeekly;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.common.Upload;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.util.DetailModel;

public class WorkliteReportAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private WorkliteReportWeekly worklitereportweekly;
	private WorkliteReportMonth worklitereportmonth;
	private WorkliteUserInfo workliteuserinfo;
	private List<File> file;
	private List<String> fileFileName;
	private PageModelByIndication pageModel;
	private DetailModel detailModel;
	private int pageNo;
	private int pageSize;
	//用于查询的开始、结束日期
	private String weekly_begin_date;
	private String weekly_end_date;
	private String month_begin_date;
	private String month_end_date;
	
	//用户创建周报的起始和结束日期
	private String weekly_start_date;
	private String weekly_stop_date;
	private String rw_id;
	private String rm_id;
	
	public WorkliteUserInfo queryUserInfo() {
		String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("userid"); 
		workliteuserinfo = userService.findByUserId(user_id);
		return workliteuserinfo;
	}
	
	public String addReportWeekly() throws Exception {

		worklitereportweekly.setRw_issue_person(this.queryUserInfo().getUser_name());
		String rw_cycle = weekly_start_date +" - "+ weekly_stop_date;
		worklitereportweekly.setRw_cycle(rw_cycle);
			if (file != null) {
				Upload up = new Upload();
				up.doUploadWeekly(file, fileFileName);
			    reportService.addReportWeekly(worklitereportweekly, fileFileName);
			    ServletActionContext.getRequest().setAttribute("message",
					"您的周报上传成功");
			    return "success_addReportWeekly";
			} else {
				this.fileFileName = null;
				reportService.addReportWeekly(worklitereportweekly, fileFileName);
			    ServletActionContext.getRequest().setAttribute("message",
					"您的月报上传成功");
			    return "success_addReportWeekly";
			}
	}
	
	public String addReportMonth() throws Exception {

		worklitereportmonth.setRm_issue_person(this.queryUserInfo().getUser_name());
		//String filename=fileFileName.get(0).replaceAll("[\\[\\]]","");
		//worklitereportmonth.setRm_remark3(filename);
		System.out.println("------action-----------");
			if (file != null) {
				Upload up = new Upload();
				up.doUploadMonth(file, fileFileName);
			    reportService.addReportMonth(worklitereportmonth, fileFileName);
			    ServletActionContext.getRequest().setAttribute("message",
					"您的月报上传成功");
			    String result = "success_addReportMonth";
			    return result;	
			} else if(file == null) {
				this.fileFileName = null;
				reportService.addReportMonth(worklitereportmonth, fileFileName);
			    ServletActionContext.getRequest().setAttribute("message",
					"您的月报上传成功");
			    String result = "success_addReportMonth";
			    return result;	
			}else {
			    return "fail";	
			}
	}
	
	//分页查询周报
	public String findByConditionForWeekly() throws UnsupportedEncodingException {
		pageModel = reportService.findByPageForWeekly(pageNo, pageSize, worklitereportweekly,
				weekly_begin_date, weekly_end_date);
		
		return "success_findByWeeklyCondition";
	}
	
	//分页查询月报
	
	public String findByConditionForMonth() throws UnsupportedEncodingException {
		pageModel = reportService.findByPageForMonth(pageNo, pageSize, worklitereportmonth,
				month_begin_date, month_end_date);
		return "success_findByMonthCondition";
	}
	
	//查询周报明细
	public String queryReportWeeklyDetail() throws UnsupportedEncodingException {
		worklitereportweekly = reportService.queryReportWeeklyDetail(rw_id);
		return "success_queryReportWeeklyDetail";
	}
	
	//查询月报明细
	public String queryReportMonthDetail() throws UnsupportedEncodingException {
		worklitereportmonth = reportService.queryReportMonthDetail(rm_id);
		System.out.println("--------action-----");
		System.out.println(worklitereportmonth.getRm_check_person());
		return "success_queryReportMonthDetail";
	}
	
	//审核通过并发布周报
	public String issueReportWeekly() throws Exception {
		reportService.issueReportWeekly(worklitereportweekly);
	    ServletActionContext.getRequest().setAttribute("message",
		"您的审核结果为：通过！");
		return "weekly_issue_success";
	}
	
	//周报审核不通过
	public String rollbackReportWeekly() throws Exception {
		reportService.rollbackReportWeekly(worklitereportweekly);
	    ServletActionContext.getRequest().setAttribute("message",
		"您的审核结果为：不通过！");
		return "weekly_rollback_success";
	}
	
	//审核通过并发布月报
	public String issueReportMonth() throws Exception {
		reportService.issueReportMonth(worklitereportmonth);
	    ServletActionContext.getRequest().setAttribute("message",
		"您的审核结果为：通过！");
		return "month_issue_success";
	}
	
	//月报审核不通过
	public String rollbackReportMonth() throws Exception {
		reportService.rollbackReportMonth(worklitereportmonth);
	    ServletActionContext.getRequest().setAttribute("message",
		"您的审核结果为：不通过！");
		return "month_rollback_success";
	}
	
	public String getWeekly_begin_date() {
		return weekly_begin_date;
	}

	public void setWeekly_begin_date(String weeklyBeginDate) {
		weekly_begin_date = weeklyBeginDate;
	}

	public String getWeekly_end_date() {
		return weekly_end_date;
	}

	public void setWeekly_end_date(String weeklyEndDate) {
		weekly_end_date = weeklyEndDate;
	}

	public String getMonth_begin_date() {
		return month_begin_date;
	}

	public void setMonth_begin_date(String month_begin_date) {
		this.month_begin_date = month_begin_date;
	}

	public String getMonth_end_date() {
		return month_end_date;
	}

	public void setMonth_end_date(String month_end_date) {
		this.month_end_date = month_end_date;
	}

	public WorkliteUserInfo getWorkliteuserinfo() {
		return workliteuserinfo;
	}

	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
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

	public WorkliteReportWeekly getWorklitereportweekly() {
		return worklitereportweekly;
	}

	public void setWorklitereportweekly(WorkliteReportWeekly worklitereportweekly) {
		this.worklitereportweekly = worklitereportweekly;
	}

	public WorkliteReportMonth getWorklitereportmonth() {
		return worklitereportmonth;
	}

	public void setWorklitereportmonth(WorkliteReportMonth worklitereportmonth) {
		this.worklitereportmonth = worklitereportmonth;
	}

	public DetailModel getDetailModel() {
		return detailModel;
	}

	public void setDetailModel(DetailModel detailModel) {
		this.detailModel = detailModel;
	}

	public String getRw_id() {
		return rw_id;
	}

	public void setRw_id(String rw_id) {
		this.rw_id = rw_id;
	}

	public String getRm_id() {
		return rm_id;
	}

	public void setRm_id(String rm_id) {
		this.rm_id = rm_id;
	}

	public String getWeekly_start_date() {
		return weekly_start_date;
	}

	public void setWeekly_start_date(String weekly_start_date) {
		this.weekly_start_date = weekly_start_date;
	}

	public String getWeekly_stop_date() {
		return weekly_stop_date;
	}

	public void setWeekly_stop_date(String weekly_stop_date) {
		this.weekly_stop_date = weekly_stop_date;
	}
	
	
}
