package wtyw.worklite.beans;

public class WorkliteTaskEnclosure {
	
	private String task_id;
	private String task_upload_person;
	private String task_upload_date;
	private String task_file_name;
	private String task_upload_person_role;
	private String task_upload_person_id;
	private String task_file_path;
	
	public String getTask_file_path() {
		return task_file_path;
	}
	public void setTask_file_path(String taskFilePath) {
		task_file_path = taskFilePath;
	}
	public String getTask_id() {
		return task_id;
	}
	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}
	public String getTask_upload_person() {
		return task_upload_person;
	}
	public void setTask_upload_person(String task_upload_person) {
		this.task_upload_person = task_upload_person;
	}
	public String getTask_upload_date() {
		return task_upload_date;
	}
	public void setTask_upload_date(String task_upload_date) {
		this.task_upload_date = task_upload_date;
	}
	public String getTask_file_name() {
		return task_file_name;
	}
	public void setTask_file_name(String task_file_name) {
		this.task_file_name = task_file_name;
	}
	public String getTask_upload_person_role() {
		return task_upload_person_role;
	}
	public void setTask_upload_person_role(String task_upload_person_role) {
		this.task_upload_person_role = task_upload_person_role;
	}
	public String getTask_upload_person_id() {
		return task_upload_person_id;
	}
	public void setTask_upload_person_id(String task_upload_person_id) {
		this.task_upload_person_id = task_upload_person_id;
	}
	
}
