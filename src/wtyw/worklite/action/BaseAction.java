package wtyw.worklite.action;

import org.apache.struts2.interceptor.SessionAware;
import wtyw.worklite.service.BookService;
import wtyw.worklite.service.KnowledgeService;
import wtyw.worklite.service.UserService;
import wtyw.worklite.service.TaskService;
import wtyw.worklite.service.CheckService;
import wtyw.worklite.service.ReportService;
import wtyw.worklite.common.Upload;

import com.opensymphony.xwork2.ActionSupport;

import java.util.*;

public class BaseAction extends ActionSupport implements SessionAware {
	
	private static final long serialVersionUID = 1L;
	protected KnowledgeService knowledgeService;
	protected UserService userService;
	protected TaskService taskService;
	protected CheckService checkService;
	protected ReportService reportService;
	protected BookService bookService;
	protected Upload upload;
	public Map session;

	public TaskService getTaskService() {
		return taskService;
	}

	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}

	public KnowledgeService getKnowledgeService() {
		return knowledgeService;
	}

	public void setKnowledgeService(KnowledgeService knowledgeService) {
		this.knowledgeService = knowledgeService;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public CheckService getCheckService() {
		return checkService;
	}

	public void setCheckService(CheckService checkService) {
		this.checkService = checkService;
	}

	public ReportService getReportService() {
		return reportService;
	}

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	public Upload getUpload() {
		return upload;
	}

	public void setUpload(Upload upload) {
		this.upload = upload;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
}
