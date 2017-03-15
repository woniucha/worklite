package wtyw.worklite.action;

import java.io.*;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.junit.runner.Request;


public class DownLoadAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String fileName;
	private String inputPath;
	private String filepath;
	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public InputStream getTargetFile() throws FileNotFoundException, UnsupportedEncodingException  {
			String name=this.getFileName();
			String path=this.getFilepath();
			String realPath = path+name;
			InputStream in = new FileInputStream(realPath);
			return new FileInputStream(realPath);
		
		//return ServletActionContext.getServletContext().getResourceAsStream(realPath);

		
	}

	//@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}
	
	public String getFileName() throws UnsupportedEncodingException {
		//return new String(fileName.getBytes("utf-8"),"ISO8859-1");
		String file = ServletActionContext.getRequest().getParameter("fileName");
		ServletActionContext.getResponse().setHeader("Content-Disposition", "attachment;fileName="+java.net.URLEncoder.encode(file,"UTF-8"));
		System.out.println(file);
		String downfile=file;
		try { 
			fileName = new String(downfile.getBytes(),"ISO8859-1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		fileName = file;
		System.out.println(fileName);
		return fileName;
	}

	//public void setFileName(String fileName) throws UnsupportedEncodingException{
		//this.fileName=URLEncoder.encode(fileName, "utf-8");
		//this.fileName = new String(fileName.getBytes("iso-8859"),"UTF-8");
	//}

	public String getInputPath() {
		return inputPath;
	}

	public void setFileName(String fileName) throws UnsupportedEncodingException {
        this.fileName = new String(fileName.getBytes("ISO-8859-1"),"UTF-8");
    }

	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	
	
}
