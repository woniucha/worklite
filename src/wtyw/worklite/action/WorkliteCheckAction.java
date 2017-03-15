package wtyw.worklite.action;


import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;
import wtyw.worklite.common.ConvertString;
import org.apache.struts2.ServletActionContext;
import wtyw.worklite.beans.WorkliteCheckDetailPersonal;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteCheckAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	private WorkliteCheckDetailPersonal checkdetailpersonal;
	private List<File> file;
	private List<String> fileFileName;
	private PageModelByIndication pageModel;
	private int pageNo;
	private int pageSize;
	
	//���뿼����Ϣͳ�Ʊ�(����)
	public String addCheckDetailPersonal() throws Exception{
		upload.importCheckDetailPersonal(file, fileFileName);
		ServletActionContext.getRequest().setAttribute("message", 
		"������Ϣͳ�Ʊ�(����)�ϴ��ѳɹ������ѵ���DB������");
		return "success";
	}
	
	public String findByCondition() throws UnsupportedEncodingException {
		pageModel = checkService.findByPage(pageNo, pageSize, checkdetailpersonal);
		return "success_findByCondition";
	}

	public WorkliteCheckDetailPersonal getCheckdetailpersonal() {
		return checkdetailpersonal;
	}

	public void setCheckdetailpersonal(
			WorkliteCheckDetailPersonal checkdetailpersonal) {
		this.checkdetailpersonal = checkdetailpersonal;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
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
	
}
