package wtyw.worklite.action;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;


public class WorkliteKnowledgeAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	private WorkliteKnowledge workliteknowledge;
	private String kl_id;
	private PageModelByIndication pageModel;
	private int pageNo;
	private int pageSize;
	private String begin_date;
	private String end_date;

    //保存草稿知识
	public String saveWorklite_knowledge() throws Exception {
		String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("userid"); 	
		workliteknowledge.setKl_commit_person(userService.findByUserId(user_id).getUser_name());
		knowledgeService.saveWorklite_knowledge(workliteknowledge);
		ServletActionContext.getRequest().setAttribute("message", 
		"知识已提存为草稿，请及时编辑并提交审核");
		return "save_success";
	}
	//提交知识审核
	public String addWorklite_knowledge() throws Exception {
		String user_id = (String)this.session.get("userid");
		workliteknowledge.setKl_commit_person(userService.findByUserId(user_id).getUser_name());
		knowledgeService.addWorklite_knowledge(workliteknowledge);
		System.out.println(workliteknowledge.getKl_id());
		ServletActionContext.getRequest().setAttribute("message", 
		"知识已提交审核，请及时关注审核结果");
		return "add_success";
	}
	
	//审核通过并发布知识
	public String issueWorklite_knowledge() throws Exception {
		knowledgeService.issueWorklite_knowledge(workliteknowledge);
		return "issue_success";
	}
	
	//提交知识审核
	public String rollbackWorklite_knowledge() throws Exception {
		knowledgeService.rollbackWorklite_knowledge(workliteknowledge);
		return "rollback_success";
	}
	
    //按ID查询知识，并展示相应页面
	public String queryKnowledgeDetail() throws Exception {
		String user_id = (String)this.session.get("userid");
		String loginUser_name = userService.findByUserId(user_id).getUser_name();
		DetailModel dm = knowledgeService.queryKnowledgeDetail(kl_id,loginUser_name);
		workliteknowledge = dm.getWorkliteKnowledge();
		String toDoing_flag = dm.getMatchFlag();
		return toDoing_flag;
	}
	
	
	//根据条件，分页查询
	public String findByCondition(){
		pageModel = knowledgeService.findByPage(pageNo,pageSize,workliteknowledge, begin_date, end_date);
		return "success_findByCondition";
	}
	
    //分页查询知识
	//public String findByPage(){
	//	pageModel = knowledgeService.findByPage(pageNo, pageSize);
	//	return "query_all_success";
	//}
	//-----------GET/SET-----------
	public WorkliteKnowledge getWorkliteknowledge() {
		return workliteknowledge;
	}

	public void setWorkliteknowledge(WorkliteKnowledge workliteknowledge) {
		this.workliteknowledge = workliteknowledge;
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

	public String getKl_id() {
		return kl_id;
	}

	public void setKl_id(String kl_id) {
		this.kl_id = kl_id;
	}
	
	public String getBegin_date() {
		return begin_date;
	}
	public void setBegin_date(String begin_date) {
		this.begin_date = begin_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
}
