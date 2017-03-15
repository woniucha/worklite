package wtyw.worklite.util;

import java.util.*;

import wtyw.worklite.beans.WorkliteCheckDetailPersonal;
import wtyw.worklite.beans.WorkliteReportMonth;
import wtyw.worklite.beans.WorkliteReportWeekly;
import wtyw.worklite.beans.WorkliteTask;
import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteBook;
import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.beans.WorkliteVacation;

/*
 * 这个Class会返回带查询条件的PageModel
 * AUTHOR 陈祝军
 * 2016.03.21
 */
public class PageModelByIndication {
	
	private int pageNo;
	private int pageSize;
	private int totalRecords;
	private List list;
	//定义变量存储查询条件
	private WorkliteCheckDetailPersonal checkDetailPersonal;
	private WorkliteTask worklitetask;
	private String issue_begin_date;
	private String issue_end_date;
	private WorkliteBook worklitebook;
	private WorkliteToken worklitetoken;
	private WorkliteVacation worklitevacation;
	private WorkliteKnowledge workliteknowledge;
	private String kl_begin_date;
	private String kl_end_date;
	private WorkliteUserInfo workliteuserinfo;
	private WorkliteReportWeekly worklitereportweekly;
	private WorkliteReportMonth worklitereportmonth;
	private String weekly_begin_date;
	private String weekly_end_date;
	private String month_begin_date;
	private String month_end_date;
	
	
	
	//针对查询条件，生成GET和SET方法	
	public WorkliteCheckDetailPersonal getCheckDetailPersonal() {
		return checkDetailPersonal;
	}
	public void setCheckDetailPersonal(
			WorkliteCheckDetailPersonal checkDetailPersonal) {
		this.checkDetailPersonal = checkDetailPersonal;
	}
	
	public WorkliteTask getWorklitetask() {
		return worklitetask;
	}
	public void setWorklitetask(WorkliteTask worklitetask) {
		this.worklitetask = worklitetask;
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
	
	public WorkliteBook getWorklitebook() {
		return worklitebook;
	}
	public void setWorklitebook(WorkliteBook worklitebook) {
		this.worklitebook = worklitebook;
	}
	public WorkliteToken getWorklitetoken() {
		return worklitetoken;
	}
	public void setWorklitetoken(WorkliteToken worklitetoken) {
		this.worklitetoken = worklitetoken;
	}
	
	public WorkliteKnowledge getWorkliteknowledge() {
		return workliteknowledge;
	}
	public void setWorkliteknowledge(WorkliteKnowledge workliteknowledge) {
		this.workliteknowledge = workliteknowledge;
	}
	public String getKl_begin_date() {
		return kl_begin_date;
	}
	public void setKl_begin_date(String kl_begin_date) {
		this.kl_begin_date = kl_begin_date;
	}
	public String getKl_end_date() {
		return kl_end_date;
	}
	public void setKl_end_date(String kl_end_date) {
		this.kl_end_date = kl_end_date;
	}
	public WorkliteUserInfo getWorkliteuserinfo() {
		return workliteuserinfo;
	}
	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
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
	public String getWeekly_begin_date() {
		return weekly_begin_date;
	}
	public void setWeekly_begin_date(String weekly_begin_date) {
		this.weekly_begin_date = weekly_begin_date;
	}
	public String getWeekly_end_date() {
		return weekly_end_date;
	}
	public void setWeekly_end_date(String weekly_end_date) {
		this.weekly_end_date = weekly_end_date;
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
	
	
	public WorkliteVacation getWorklitevacation() {
		return worklitevacation;
	}
	public void setWorklitevacation(WorkliteVacation worklitevacation) {
		this.worklitevacation = worklitevacation;
	}
	/**
	 * 获取当前页
	 * @return
	 */
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	/**
	 * 获取每页显示记录数
	 * @return
	 */
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 获取查询结果集
	 * @return
	 */
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	/**
	 * 获取总记录数
	 * @return
	 */
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	/**
	 * 获取总页数
	 * @return
	 */
	public int getTotalPages() {
		return (totalRecords+pageSize-1)/pageSize;
	}

	/**
	 * 取得首页
	 * @return
	 */
	public int getTopPageNo() {
		return 1;
	}

	/**
	 * 取得上一页
	 * @return
	 */
	public int getPreviousPageNo() {
		if(pageNo<=1){
			return 1;
		}
		return pageNo-1;
	}

	/**
	 * 取得下一页
	 * @return
	 */
	public int getNextPageNo() {
		if(pageNo>=getTotalPages()){
			return getTotalPages()==0?1:getTotalPages();
		}
		return pageNo+1;
	}

	/**
	 * 取得最后一页
	 * @return
	 */
	public int getBottomPageNo() {
		return getTotalPages()==0?1:getTotalPages();
	}

}
