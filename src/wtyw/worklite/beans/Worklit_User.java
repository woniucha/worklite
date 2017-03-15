package wtyw.worklite.beans;

public class Worklit_User {
	private int user_id;
	private String user_name;
	private String user_pwd;
	private String user_level;

	public String getUser_level() {
		return user_level;
	}
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	public Worklit_User() {
		super();
	}
	public Worklit_User(int userId, String userName, String userPwd) {
		super();
		user_id = userId;
		user_name = userName;
		user_pwd = userPwd;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String userPwd) {
		user_pwd = userPwd;
	}
	public String toString(){
		return "±àºÅ£º"+this.getUser_id()+"ĞÕÃû:"+this.getUser_name()+"ÃÜÂë£º"+this.getUser_pwd();
	}
	
}
