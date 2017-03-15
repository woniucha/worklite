package wtyw.worklite.action;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.service.UserInfoService;
import wtyw.worklite.service.UserService;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.dao.WorkliteUserInfoDao;
import wtyw.worklite.beans.WorkliteUserLogin;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.beans.WorkliteTodoing;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.util.PasswordHash;

public class WorkliteUserAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	

	private int pageNo;
	private int pageSize;
	private PageModelByIndication pageModel;
	private UserInfoService userinfoservice;
	private WorkliteUserInfoDao worklite_userinfodao;
	private List<WorkliteUserInfo> workliteuserinfos;
	private List<WorkliteTodoing> worklitetodoings;
	private WorkliteUserLogin workliteuserlogin;
	private WorkliteUserInfo workliteuserinfo;
	private UserService userService;
	private String user_newpwd;
	
	
	public String register() throws Exception  {
		List<WorkliteUserLogin> queryWorkliteUsersbyname = userService
				.queryWorklite_usersbyname(workliteuserlogin.getUser_name());
		
		if (queryWorkliteUsersbyname.size() > 0) {
			ServletActionContext.getRequest().setAttribute("message",
					"�û�������");
			return "registerFail";
		} else {
			workliteuserlogin.setUser_id(new GenerateID().generateUserId());
			userService.register(workliteuserlogin);
			workliteuserinfo.setUser_pwd(PasswordHash.createHash(workliteuserlogin.getUser_pwd()));
			workliteuserinfo.setUser_id(workliteuserlogin.getUser_id());
			workliteuserinfo.setUser_corporation("���޸�Ĭ��ֵ");
			workliteuserinfo.setUser_project("���޸�Ĭ��ֵ");
			workliteuserinfo.setUser_education("���޸�Ĭ��ֵ");
			workliteuserinfo.setUser_specialty("���޸�Ĭ��ֵ");
			workliteuserinfo.setUser_status("1");
			worklite_userinfodao.saveNew_Worklite_User_Info(workliteuserinfo);
			String userid=workliteuserlogin.getUser_id();
			File file = new File("D://upload//"+userid);
			if(!file.exists()&&!file.isDirectory()){
				file.mkdir();
			}
			return "registerSuccess";
		}
	}
	@SuppressWarnings("unchecked")
	public String login() throws NoSuchAlgorithmException, InvalidKeySpecException {
		List<WorkliteUserLogin> queryWorkliteUsersbyname = userService
				.queryWorklite_usersbyname(workliteuserlogin.getUser_name());
		if (queryWorkliteUsersbyname.size() > 0) {
			WorkliteUserLogin wul = queryWorkliteUsersbyname.get(0);
			String passwdinfo = wul.getUser_pwd();
			String user_id = wul.getUser_id();
			String user_name = wul.getUser_name();
			String pwd = workliteuserlogin.getUser_pwd();
			ServletActionContext.getRequest().setAttribute("userid",user_id);
			if(PasswordHash.validatePassword(pwd, passwdinfo)){
				this.session.put("userid", user_id);
				this.session.put("username",user_name);
				System.out.println(this.session.get("userid"));
				return "loginSuccess";
			} else {
				ServletActionContext.getRequest().setAttribute("message",
						"������������������");
				return "loginFail";
			}
		} else {
			ServletActionContext.getRequest().setAttribute("message",
					"�û������ڣ�����������");
			return "loginFail";
		}
	}

	/**
	 * 
	 * 
	 * @return
	 */
	public String loginOut() {
		ServletActionContext.getRequest().getSession().invalidate();
		return "loginOut";
	}
	
	//��ѯ�û���������
	public String userToDoing(){
		String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("userid"); 
		worklitetodoings = userService.queryTodoing(userService.findByUserId(user_id).getUser_name());
		return "queryTodoing_success";
	}

	//����û�
	public String addUser() {
		if (workliteuserlogin.getUser_name().equals("")) {
			ServletActionContext.getRequest().setAttribute("message", "�û�����¼���Ʋ���Ϊ��");
			return "fail";
		}
		List<WorkliteUserLogin> queryWorkliteUsersbyname = userService
				.queryWorklite_usersbyname(workliteuserlogin.getUser_name());
		if (queryWorkliteUsersbyname.size() > 0) {
			ServletActionContext.getRequest().setAttribute("message", "�û�������");
			return "fail";
		}
		userinfoservice.addNew_Worklite_User_Info(workliteuserinfo,workliteuserlogin);
		ServletActionContext.getRequest().setAttribute("message", "�û���ӳɹ�");
		return "addsuccess";
	}
	//��ѯ�û���ϸ��Ϣ
	public String queryUserInfoDetail() {
		workliteuserlogin=userService.findByLoginId(workliteuserinfo.getUser_id());
		workliteuserinfo = userinfoservice.queryUserInfoDetail(workliteuserinfo.getUser_id());
		if (!workliteuserinfo.equals(null)) {
			return "queryDetail_success";
		} else
			return "fail";
	}
	//�����û���Ϣ
	public String updateUser() throws Exception {
		
		workliteuserlogin=userService.findByLoginId(workliteuserinfo.getUser_id());
		String result = userinfoservice.saveWorklite_User_Info(workliteuserinfo,workliteuserlogin);
		return result;
	}

	public String updatequeryUserInfoDetail() {
		workliteuserlogin=userService.findByLoginId(workliteuserinfo.getUser_id());
/*		if (workliteuserlogin==null||workliteuserlogin.getUser_id()==null||workliteuserlogin.getUser_id().equals("")) {
			WorkliteUserLogin workliteuserlogin=new WorkliteUserLogin();
			workliteuserlogin.setUser_id(workliteuserinfo.getUser_id());
			workliteuserlogin.setUser_pwd("123456");
			workliteuserlogin.setUser_name(workliteuserinfo.getUser_id());
			userService.register(workliteuserlogin);
		}
		workliteuserinfo.setUser_pwd(workliteuserlogin.getUser_pwd());*/
		workliteuserinfo = userinfoservice.queryUserInfoDetail(workliteuserinfo.getUser_id());
		
		if (!workliteuserinfo.equals(null)) {
			return "updatequeryDetail_success";
		} else
			return "fail";
	}
	
	//��������ҳ��ѯ����
	public String findByCondition(){
		pageModel = userinfoservice.findByPage(pageNo, pageSize, workliteuserinfo);
		return "success_findByCondition";
	}

	//�޸�����Action
	public String update_pwd() throws Exception  {
		List<WorkliteUserLogin> queryWorkliteUsersbyname = userService.queryWorklite_usersbyname(workliteuserlogin.getUser_name());
		if (queryWorkliteUsersbyname.size() == 0) {
			ServletActionContext.getRequest().setAttribute("message","�޴��û��������������������Ϣ��");
		} else {
			String userid=queryWorkliteUsersbyname.get(0).getUser_id();
			String userpwd=queryWorkliteUsersbyname.get(0).getUser_pwd();
			if(PasswordHash.validatePassword(workliteuserlogin.getUser_pwd(), userpwd)){
				if(worklite_userinfodao.updatepwdbyuserid(userid, PasswordHash.createHash(user_newpwd)).equals("success")){
					ServletActionContext.getRequest().setAttribute("message","�޸�����ɹ���");
				}else{
					ServletActionContext.getRequest().setAttribute("message","�޸�����ʧ�ܣ�����ϵ����Ա��");
				}
			}else {
				ServletActionContext.getRequest().setAttribute("message","ԭ������������������");
			}
		}
		return "fail";
	}
	//
	
	public String annulUser() {
		String result = userinfoservice.annulworkliteuser(workliteuserinfo.getUser_id());
		if (result.equals("have_annul")) {
			ServletActionContext.getRequest().setAttribute("message",
					"�û���ע���������ظ�ע��");
			return "annul_result";
		} else {
			ServletActionContext.getRequest().setAttribute("message", "�û���ע����лл!");
			return "annul_result";
		}
	}

	//
	public WorkliteUserLogin getWorkliteuserlogin() {
		return workliteuserlogin;
	}

	public void setWorkliteuserlogin(WorkliteUserLogin workliteuserlogin) {
		this.workliteuserlogin = workliteuserlogin;
	}



	public WorkliteUserInfo getWorkliteuserinfo() {
		return workliteuserinfo;
	}

	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
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

	public PageModelByIndication getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModelByIndication pageModel) {
		this.pageModel = pageModel;
	}

	public UserInfoService getUserinfoservice() {
		return userinfoservice;
	}

	public void setUserinfoservice(UserInfoService userinfoservice) {
		this.userinfoservice = userinfoservice;
	}


	public WorkliteUserInfoDao getWorklite_userinfodao() {
		return worklite_userinfodao;
	}

	public void setWorklite_userinfodao(WorkliteUserInfoDao workliteUserinfodao) {
		worklite_userinfodao = workliteUserinfodao;
	}

	public List<WorkliteUserInfo> getWorkliteuserinfos() {
		return workliteuserinfos;
	}

	public void setWorkliteuserinfos(List<WorkliteUserInfo> workliteuserinfos) {
		this.workliteuserinfos = workliteuserinfos;
	}


	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<WorkliteTodoing> getWorklitetodoings() {
		return worklitetodoings;
	}

	public void setWorklitetodoings(List<WorkliteTodoing> worklitetodoings) {
		this.worklitetodoings = worklitetodoings;
	}
	public String getUser_newpwd() {
		return user_newpwd;
	}
	public void setUser_newpwd(String user_newpwd) {
		this.user_newpwd = user_newpwd;
	}


}