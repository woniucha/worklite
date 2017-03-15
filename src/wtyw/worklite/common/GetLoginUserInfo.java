package wtyw.worklite.common;

import com.opensymphony.xwork2.ActionSupport;

import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class GetLoginUserInfo extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private WorkliteUserInfo workliteuserinfo;
	private UserService userService;
	
	public WorkliteUserInfo getWorkliteuserinfo(String user_id) {
		workliteuserinfo = userService.findByUserId(user_id);
		return workliteuserinfo;
	}

	public void setWorkliteuserinfo(WorkliteUserInfo workliteuserinfo) {
		this.workliteuserinfo = workliteuserinfo;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
