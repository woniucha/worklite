package wtyw.worklite.service;

import java.util.List;
import wtyw.worklite.beans.WorkliteCheckDetailPersonal;
import wtyw.worklite.dao.WorkliteCheckDao;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;

public class CheckService {
	
	private List<DetailModel> list;
	private WorkliteCheckDetailPersonal checkDetailPersonal;
	private WorkliteCheckDao workliteCheckDao;

	
	//∑÷“≥≤È—Ø
	public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteCheckDetailPersonal checkDetailPersonal) {   
		if(checkDetailPersonal.getCheck_name().equals("")){
        	checkDetailPersonal.setCheck_name("%%");
        }
		if(checkDetailPersonal.getCheck_project().equals("")|| 
				checkDetailPersonal.getCheck_project().equals("null") ||
				checkDetailPersonal.getCheck_project() == null){
        checkDetailPersonal.setCheck_project("%%");
        }
        if(checkDetailPersonal.getCheck_owner_institution().equals("") ||
        		checkDetailPersonal.getCheck_owner_institution().equals("null") ||
        		checkDetailPersonal.getCheck_owner_institution() == null){
        checkDetailPersonal.setCheck_owner_institution("%%");
        }
        if(checkDetailPersonal.getCheck_begin_time().equals("")){
        	checkDetailPersonal.setCheck_begin_time("0000-00-00");
        }
        if(checkDetailPersonal.getCheck_end_time().equals("")){
        	checkDetailPersonal.setCheck_end_time("9999-99-99");
        }        
		return workliteCheckDao.findByPage(pageNo, pageSize, checkDetailPersonal);   
	}
	
	public WorkliteCheckDetailPersonal getCheckDetailPersonal() {
		return checkDetailPersonal;
	}

	public void setCheckDetailPersonal(
			WorkliteCheckDetailPersonal checkDetailPersonal) {
		this.checkDetailPersonal = checkDetailPersonal;
	}


	public WorkliteCheckDao getWorkliteCheckDao() {
		return workliteCheckDao;
	}


	public void setWorkliteCheckDao(WorkliteCheckDao workliteCheckDao) {
		this.workliteCheckDao = workliteCheckDao;
	}
	

}
