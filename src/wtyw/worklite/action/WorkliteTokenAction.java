package wtyw.worklite.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.service.TokenService;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteTokenLend;
import wtyw.worklite.dao.WorkliteTokenDao;
import com.opensymphony.xwork2.ActionSupport;

public class WorkliteTokenAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TokenService tokenService;
	private WorkliteToken worklitetoken;
	private WorkliteTokenLend worklitetokenlend;
	private WorkliteTokenDao worklitetokendao;
	private List<WorkliteToken> worklitetokens;
	private int pageNo;
	private int pageSize;
	private PageModel pageModel;
	private PageModelByIndication pageModelByIndication;
	private String token_id;

	public String getToken_id() {
		return token_id;
	}

	public void setToken_id(String tokenId) {
		token_id = tokenId;
	}

	//��������
	public String addToken(){
		worklitetokendao.addWorklite_token(worklitetoken);
		ServletActionContext.getRequest().setAttribute("message", "����������⣬лл!");
		return "addsuccess";
	}
	
	//��ѯ����
	public String queryTokenDetail() {
		System.out.println(worklitetoken.getToken_uass_name());
		worklitetoken = tokenService.queryWorklitetoken(worklitetoken.getToken_id());
		if (worklitetoken!=null) {
			return "queryDetail_success";
		} else
			ServletActionContext.getRequest().setAttribute("message", "��ѯ����������Ϣ��лл!");
			return "fail";
	}
	//
	public String updateTokenDetail() {
		System.out.println(worklitetoken.getToken_uass_name());
		worklitetoken = tokenService.queryWorklitetoken(worklitetoken.getToken_id());
		if (worklitetoken!=null && worklitetoken.getToken_status().equals("������")) {
			return "queryDetail_success";
		} else{
			ServletActionContext.getRequest().setAttribute("message", "�����ѽ����ע������ʱ�޷��޸����ݣ�лл!");
			return "fail";}
	}
    //ά������
	public String updateToken() {
		System.out.println(worklitetoken.getToken_uass_name());
		System.out.println(worklitetoken.getToken_location()+"loc");
		System.out.println(worklitetoken.getToken_owner()+"own");
		System.out.println(worklitetoken.getToken_status()+"STU");
		String result = tokenService.updateWorklitetoken(worklitetoken);
		if (result.equals("success")){
			ServletActionContext.getRequest().setAttribute("message", "������Ϣ���³ɹ�!");
		}else{
			ServletActionContext.getRequest().setAttribute("message", "������Ϣ����ʧ�ܣ����������Ϣ�Ƿ�Ϲ棡");
			}
		return result;
	}
	
    //��������
	public String useQuery() {
		worklitetoken = tokenService.queryWorklitetoken(worklitetoken.getToken_id());
		if (!("������".equals(worklitetoken.getToken_status())) ) {
			ServletActionContext.getRequest().setAttribute("message", "�����ѱ����ã����������ã�лл!");
			return "use_fail";
		} else
		{
			return "useQuery_success";	
		}
	}
	
	public String lendToken(){
		String result = null;
		result = tokenService.lendToken(worklitetoken.getToken_id(),worklitetokenlend);
		return result;
	}
	

	public String backQuery() {
		String result = "fail";
		if (!tokenService.querytokenstatus(worklitetoken.getToken_id()).equals("success")) {
			ServletActionContext.getRequest().setAttribute("message", "���Ʒ�����״̬�����ɹ黹��лл!");
			return result;
		} else {
			worklitetokenlend = tokenService.queryWorkliteTokenLend(worklitetoken.getToken_id());
			if (worklitetokenlend != null) {
				result = "backQuery_success";
			}
		}
		return result;
	}
	

	public String backtoken(){
		String result = null;						 
		result = this.tokenService.backToken(worklitetokenlend);
		return result;
	}
	

	public String annulToken() {
		String result = this.tokenService.annulworklitetoken(worklitetoken.getToken_id());
		if(result.equals("have_lend")){
			ServletActionContext.getRequest().setAttribute("message", "���Ʊ����ã�����ע����лл!");
			return "annul_result";
		}else if (result.equals("have_annul"))
		{
			ServletActionContext.getRequest().setAttribute("message", "������ע���������ظ�ע����лл!");
			return "annul_result";
		}else
		{
			ServletActionContext.getRequest().setAttribute("message", "������ע����лл!!");
		    return "annul_result";
		}
	}
	

	public String queryAllToken(){
		System.out.println(worklitetoken.getToken_uass_name()+"111");
		worklitetokens=worklitetokendao.allWorkliteToken();
		if(worklitetokens.isEmpty()){
			return "fail";
		}
		return "query_all_success";
	}

	//��������ҳ��ѯ����
	public String findByCondition() {
		System.out.println("-------��ȡҳ���͹���������״̬-------");
		System.out.println(worklitetoken.getToken_status());
		pageModelByIndication = tokenService.findByPage(pageNo, pageSize, worklitetoken);
		return "success_findByCondition";
	}
	
	//public String findByPage(){
	//	pageModel = worklitetokendao.findByPage(pageNo,pageSize);
	//	return "findByPage_success";
	//}

	public String findByPage_tokenlend(){
		System.out.println(worklitetoken.getToken_id());
		pageModel = worklitetokendao.findByPage_Tokenlend(pageNo,pageSize,worklitetoken.getToken_id());
		return "findByPage_tokenlend_success";
	}
	
	public WorkliteToken getWorklitetoken() {
		return worklitetoken;
	}

	public void setWorklitetoken(WorkliteToken worklitetoken) {
		this.worklitetoken = worklitetoken;
	}

	public void setWorklitetokens(List<WorkliteToken> worklitetokens) {
		this.worklitetokens = worklitetokens;
	}

	public WorkliteTokenDao getWorklitetokendao() {
		return worklitetokendao;
	}

	public void setWorklitetokendao(WorkliteTokenDao worklitetokendao) {
		this.worklitetokendao = worklitetokendao;
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

	public PageModelByIndication getPageModelByIndication() {
		return pageModelByIndication;
	}

	public void setPageModelByIndication(PageModelByIndication pageModelByIndication) {
		this.pageModelByIndication = pageModelByIndication;
	}

	public PageModel getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}

	public TokenService getTokenService() {
		return tokenService;
	}

	public void setTokenService(TokenService tokenService) {
		this.tokenService = tokenService;
	}
	public List<WorkliteToken> getWorklitetokens() {
		return worklitetokens;
	}

	public void setWorkliteusers(List<WorkliteToken> worklitetokens) {
		this.worklitetokens = worklitetokens;
	}

	public WorkliteTokenLend getWorklitetokenlend() {
		return worklitetokenlend;
	}

	public void setWorklitetokenlend(WorkliteTokenLend worklitetokenlend) {
		this.worklitetokenlend = worklitetokenlend;
	}


}
