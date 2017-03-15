package wtyw.worklite.beans;

public class WorkliteToken {
	private String token_id;
	private String token_uass_name;
	private String token_pwd;
	private String token_pin;
	private String token_location;
	private String token_reg_time;
	private String token_owner;
	private String token_office;
	private String token_remarks;
	private String token_status;
	private String token_root;
	private String token_no;
	private String token_system;
	private String token_phone;
	private String token_request;
	private String token_logout;
	public WorkliteToken() {
		super();
	}
/*	public WorkliteToken(int userId, String userName, String userPwd) {
		super();
		user_id = userId;
		user_name = userName;
		user_pwd = userPwd;
	}
*/
	
	public String getToken_id() {
		return token_id;
	}
	public void setToken_id(String tokenId) {
		token_id = tokenId;
	}
	public String getToken_uass_name() {
		return token_uass_name;
	}
	public void setToken_uass_name(String tokenUassName) {
		token_uass_name = tokenUassName;
	}
	public String getToken_pwd() {
		return token_pwd;
	}
	public void setToken_pwd(String tokenPwd) {
		token_pwd = tokenPwd;
	}
	public String getToken_pin() {
		return token_pin;
	}
	public void setToken_pin(String tokenPin) {
		token_pin = tokenPin;
	}
	public String getToken_location() {
		return token_location;
	}
	public void setToken_location(String tokenLocation) {
		token_location = tokenLocation;
	}
	public String getToken_reg_time() {
		return token_reg_time;
	}
	public void setToken_reg_time(String tokenRegTime) {
		token_reg_time = tokenRegTime;
	}
	public String getToken_owner() {
		return token_owner;
	}
	public void setToken_owner(String tokenOwner) {
		token_owner = tokenOwner;
	}
	public String getToken_office() {
		return token_office;
	}
	public void setToken_office(String tokenOffice) {
		token_office = tokenOffice;
	}
	public String getToken_remarks() {
		return token_remarks;
	}
	public void setToken_remarks(String tokenRemarks) {
		token_remarks = tokenRemarks;
	}
	public String getToken_status() {
		return token_status;
	}
	public void setToken_status(String token_status) {
		this.token_status = token_status;
	}

	public String getToken_root() {
		return token_root;
	}

	public void setToken_root(String token_root) {
		this.token_root = token_root;
	}

	public String getToken_system() {
		return token_system;
	}

	public void setToken_system(String token_system) {
		this.token_system = token_system;
	}

	public String getToken_no() {
		return token_no;
	}

	public void setToken_no(String token_no) {
		this.token_no = token_no;
	}

	public String getToken_phone() {
		return token_phone;
	}

	public void setToken_phone(String token_phone) {
		this.token_phone = token_phone;
	}

	public String getToken_request() {
		return token_request;
	}

	public void setToken_request(String token_request) {
		this.token_request = token_request;
	}

	public String getToken_logout() {
		return token_logout;
	}

	public void setToken_logout(String token_logout) {
		this.token_logout = token_logout;
	}
	
	
}
