package wtyw.worklite.service;

import java.io.File;
import java.util.List;
import wtyw.worklite.beans.WorkliteReportMonth;
import wtyw.worklite.beans.WorkliteReportWeekly;
import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.dao.WorkliteReportDao;
import wtyw.worklite.util.PageModelByIndication;

public class ReportService {
	private WorkliteReportDao workliteReportDao;

	public void addReportWeekly(WorkliteReportWeekly rw, List<String> fileFileName) {
		try {	
			rw.setRw_id(new GenerateID().generateReportWeeklyId());
			rw.setRw_issue_date(new GenerateCurrentDate().getCurrentDate());
			rw.setRw_status("�����");
			rw.setRw_encloser(fileFileName.get(0));	
			rw.setRw_file_path("D:/upload/weekly/");
			workliteReportDao.addReportWeekly(rw);
		} catch (Exception e) {

		}
		return;
	}
	
	public void addReportMonth(WorkliteReportMonth rm, List<String> fileFileName) {

		try {

			rm.setRm_id(new GenerateID().generateReportMonthId());
			rm.setRm_issue_date(new GenerateCurrentDate().getCurrentDate());
			rm.setRm_status("�����");
			rm.setRm_remark3(fileFileName.get(0));	
			rm.setRm_file_path("D:/upload/month/");
			workliteReportDao.addReportMonth(rm);
		} catch (Exception e) {

		}
		return;
	}
	
	//�ܱ���ҳ��ѯ
	public PageModelByIndication findByPageForWeekly(int pageNo,int pageSize, WorkliteReportWeekly rw,
			String begin, String end) {		
		if(rw.getRw_year().equals("")){
			rw.setRw_year("%%");
		}
		if(rw.getRw_issue_person().equals("")){
			rw.setRw_issue_person("%%");
        }
		if(rw.getRw_system().equals("")){
			rw.setRw_system("%%");
        }
        if(begin.equals("")){
        	begin = "0000-00-00";
        }
        if(end.equals("")){
        	end = "9999-99-99";
        } 
        return workliteReportDao.findByPageForWeekly(pageNo, pageSize, rw, begin, end);   
        
	}
	
	//�±���ҳ��ѯ
	public PageModelByIndication findByPageForMonth(int pageNo,int pageSize, WorkliteReportMonth rm,
			String begin, String end) {		
		if(rm.getRm_year().equals("")){
			rm.setRm_year("%%");
        }
		if(rm.getRm_issue_person().equals("")){
			rm.setRm_issue_person("%%");
        }
        if(begin.equals("")){
        	begin = "0000-00-00";
        }
        if(end.equals("")){
        	end = "9999-99-99";
        } 
        return workliteReportDao.findByPageForMonth(pageNo, pageSize, rm, begin, end);   
        
	}
	
	public WorkliteReportWeekly queryReportWeeklyDetail(String rw_id){
		
		return workliteReportDao.queryReportWeeklyDetail(rw_id);  
	}
	
	public WorkliteReportMonth queryReportMonthDetail(String rm_id){	
		return workliteReportDao.queryReportMonthDetail(rm_id);  
	}
	
	//���ͨ���󣬷����ܱ�
	public void issueReportWeekly(WorkliteReportWeekly worklitereportweekly) throws Exception {
		try
		{
			    worklitereportweekly.setRw_status("�ѷ���");       
		        workliteReportDao.issueReportWeekly(worklitereportweekly);
                return;   //����֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//��˲�ͨ���˻��ܱ�
	public void rollbackReportWeekly(WorkliteReportWeekly worklitereportweekly) throws Exception {
		try
		{
			    worklitereportweekly.setRw_status("�޶���");        
			    workliteReportDao.rollbackReportWeekly(worklitereportweekly);
                return;   //�˻�֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
	//���ͨ���󣬷����±�
	public void issueReportMonth(WorkliteReportMonth worklitereportmonth) throws Exception {
		try
		{
		        worklitereportmonth.setRm_status("�ѷ���");      
		        workliteReportDao.issueReportMonth(worklitereportmonth);
                return;   //����֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//��˲�ͨ���˻��±�
	public void rollbackReportMonth(WorkliteReportMonth worklitereportmonth) throws Exception {
		try
		{
			    worklitereportmonth.setRm_status("�޶���");        
			    workliteReportDao.rollbackReportMonth(worklitereportmonth);
                return;   //�˻�֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
	
	public WorkliteReportDao getWorkliteReportDao() {
		return workliteReportDao;
	}
	public void setWorkliteReportDao(WorkliteReportDao workliteReportDao) {
		this.workliteReportDao = workliteReportDao;
	}	
}
