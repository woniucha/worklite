package wtyw.worklite.beans;

public class WorkliteEstimateDetail {
	
	private String task_id;
	private String user_id;
	private String estimate_id;
	private String estimate_detail;
	private String mark1;
	private String mark2;
	
	public String getTask_id() {
		return task_id;
	}
	public void setTask_id(String taskId) {
		task_id = taskId;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String userId) {
		user_id = userId;
	}
	public String getEstimate_id() {
		return estimate_id;
	}
	public void setEstimate_id(String estimateId) {
		estimate_id = estimateId;
	}
	public String getEstimate_detail() {
		return estimate_detail;
	}
	public void setEstimate_detail(String estimateDetail) {
		estimate_detail = estimateDetail;
	}
	public String getMark1() {
		return mark1;
	}
	public void setMark1(String mark1) {
		this.mark1 = mark1;
	}
	public String getMark2() {
		return mark2;
	}
	public void setMark2(String mark2) {
		this.mark2 = mark2;
	}	
}
