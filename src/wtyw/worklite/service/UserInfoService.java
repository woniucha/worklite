package wtyw.worklite.service;

import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.beans.WorkliteUserLogin;
import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.dao.WorkliteUserDao;
import wtyw.worklite.dao.WorkliteUserInfoDao;
import wtyw.worklite.util.PageModelByIndication;

public class UserInfoService {

	private WorkliteUserInfo workliteuserinfo;

	private WorkliteUserInfoDao worklite_userinfodao;
	private WorkliteUserDao worklite_userdao;
	private WorkliteUserLogin worklite_userlogin;
	private WorkliteUserDao userDao;

	public WorkliteUserInfoDao getWorklite_userinfodao() {
		return worklite_userinfodao;
	}

	public void setWorklite_userinfodao(WorkliteUserInfoDao worklite_userinfodao) {
		this.worklite_userinfodao = worklite_userinfodao;
	}

	public WorkliteUserDao getWorklite_userdao() {
		return worklite_userdao;
	}

	public void setWorklite_userdao(WorkliteUserDao workliteUserdao) {
		worklite_userdao = workliteUserdao;
	}

	public WorkliteUserLogin getWorklite_userlogin() {
		return worklite_userlogin;
	}

	public void setWorklite_userlogin(WorkliteUserLogin workliteUserlogin) {
		worklite_userlogin = workliteUserlogin;
	}

	public WorkliteUserInfo getWorkliteuserinfo() {
		return workliteuserinfo;
	}

	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
	}

	public String saveWorklite_User_Info(WorkliteUserInfo workliteuserinfo, WorkliteUserLogin workliteuserlogin)throws Exception {
		String result = "fail";
		try {
			worklite_userinfodao.saveExist_Worklite_User_Info(workliteuserinfo);
			//workliteuserlogin.setUser_status(workliteuserinfo.getUser_status());
			//userDao.updateWorklite_user_login(workliteuserlogin);
			result = "updatesuccess"; 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	public String addNew_Worklite_User_Info(WorkliteUserInfo workliteuserinfo, WorkliteUserLogin workliteuserlogin2) {
		String result = "fail";
		try {
				workliteuserinfo.setUser_id(new GenerateID().generateUserId());
				workliteuserinfo.setUser_pwd(workliteuserlogin2.getUser_pwd());
				workliteuserinfo.setUser_corporation("请修改默认值");
				workliteuserinfo.setUser_project("请修改默认值");
				workliteuserinfo.setUser_education("请修改默认值");
				workliteuserinfo.setUser_specialty("请修改默认值");
				this.worklite_userinfodao.addNew_Worklite_User_Info(workliteuserinfo);
				workliteuserlogin2.setUser_id(workliteuserinfo.getUser_id());
				workliteuserlogin2.setUser_reg_date(new GenerateCurrentDate().getCurrentDate());
				workliteuserlogin2.setUser_status(workliteuserinfo.getUser_status());
				workliteuserlogin2.setUser_cancel_date("9999-99-99");
				workliteuserlogin2.setUser_login_frequency("1");//登录次数
				workliteuserlogin2.setUser_nearly_login_date(new GenerateCurrentDate().getCurrentDate());
				workliteuserlogin2.setUser_uass_name(workliteuserinfo.getUser_account());//登录次数
				userDao.addWorklite_users(workliteuserlogin2);
				result = "success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	};


	public WorkliteUserInfo queryUserInfoDetail(String user_id) {
		WorkliteUserInfo wk = null;
		try {
			if (!"".equals(user_id) && user_id != null
					&& !"null".equals(user_id)) {
				wk = worklite_userinfodao.queryUserInfoDetail(user_id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return wk;
	}


	public String annulworkliteuser(String userid) {
		String result = null;
		try {
			if (!"".equals(userid) && userid != null && !"null".equals(userid)) {
				
				WorkliteUserInfo workliteuserinfo = this.worklite_userinfodao
						.queryUserInfoDetail(userid);
				if (workliteuserinfo.getUser_status().equals("0")) {
					result = "have_annul";
				} else {
					this.worklite_userinfodao.annulWorklite_User_Info(userid);
					worklite_userlogin.setUser_status(workliteuserinfo.getUser_status());
					worklite_userdao.queryWorklite_usersbyID(worklite_userlogin.getUser_id());
					this.worklite_userdao.updateWorklite_user_login(worklite_userlogin);
					result = "annul_success";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	//按条件分页查询
	public PageModelByIndication findByPage(int pageNo, int pageSize, WorkliteUserInfo workliteuserinfo) {		
		if(workliteuserinfo.getUser_project().equals("")){
			workliteuserinfo.setUser_project("%%");
        }
		if(workliteuserinfo.getUser_education().equals("")){
			workliteuserinfo.setUser_education("%%");
        }
		if(workliteuserinfo.getUser_name().equals("")){
			workliteuserinfo.setUser_name("%%");
        }
		if(workliteuserinfo.getUser_specialty().equals("")){
			workliteuserinfo.setUser_specialty("%%");
        }
		if(workliteuserinfo.getUser_corporation().equals("")){
			workliteuserinfo.setUser_corporation("%%");
        }
		if(workliteuserinfo.getUser_status().equals("")){
			workliteuserinfo.setUser_status("%%");
        }
        return worklite_userinfodao.findByPage(pageNo, pageSize, workliteuserinfo);   
        
	}

	public WorkliteUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(WorkliteUserDao userDao) {
		this.userDao = userDao;
	}
	
}
