package wtyw.worklite.service;

import wtyw.worklite.beans.*;
import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.dao.WorkliteUserDao;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.PasswordHash;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.*;

public class UserService {
	
	private WorkliteUserDao userDao;	
	
	public void register(WorkliteUserLogin wul) throws Exception{
		wul.setUser_reg_date(new GenerateCurrentDate().getCurrentDate());
		wul.setUser_cancel_date("9999-99-99");
		wul.setUser_login_frequency("1");//登录次数
		wul.setUser_nearly_login_date(new GenerateCurrentDate().getCurrentDate());
		wul.setUser_status("1");
		wul.setUser_pwd(PasswordHash.createHash(wul.getUser_pwd()));
		userDao.addWorklite_users(wul);
		return;
	}

	public List<WorkliteUserLogin> queryWorklite_usersbyname(String userName) {
		List<WorkliteUserLogin> wul = userDao.queryWorklite_usersbyname(userName);
		return wul;
	}
	

	public WorkliteUserInfo queryWorklite_userInfoByName(String userName) {
		List<WorkliteUserInfo> wul = userDao.queryWorklite_userInfoByName(userName);
		WorkliteUserInfo wui = wul.get(0);
		return wui;
	}
	//查询用户待办事项
    public List<WorkliteTodoing> queryTodoing(String userName){
    	List<WorkliteTodoing> wtd = userDao.queryTodoing(userName);
		return wtd;
    }
    
	public void addWorklite_user_info(){

		return;
	}
	

	public void updateWorklite_user_info(){
		return;
	}
	

	public void cancelWorklite_user_info(){

		return;
	}

	public WorkliteUserInfo findByUserId(String user_id) {
		WorkliteUserInfo workliteuserinfo = null;
		try {
			if (!"".equals(user_id) && user_id != null
					&& !"null".equals(user_id)) {
				workliteuserinfo = userDao.findByUserId(user_id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return workliteuserinfo;
	}
	
	
	public List<WorkliteUserInfo> findByRequirement(WorkliteUserInfo workliteuserinfo){
		List<WorkliteUserInfo> wui = userDao.findByRequirement(workliteuserinfo);
		return wui;
	}
	

	public PageModel findByPage(int pageNo,int pageSize) {
		
        return userDao.findByPage(pageNo, pageSize);
        
	}

	public WorkliteUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(WorkliteUserDao userDao) {
		this.userDao = userDao;
	}
	public Worklit_User getUser(String name) {
		return null;
	}

	public WorkliteUserLogin findByLoginId(String userId) {
		// TODO Auto-generated method stub
		WorkliteUserLogin workliteUserLogin=null;
		try {
			if (!"".equals(userId) && userId != null
					&& !"null".equals(userId)) {
				workliteUserLogin = userDao.findByLoginId(userId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return workliteUserLogin;
	}

	public void updateWorklite_user_login(WorkliteUserLogin workliteuserlogin) {
		// TODO Auto-generated method stub
		userDao.updateWorklite_user_login(workliteuserlogin);
		
		
	}
	
}
