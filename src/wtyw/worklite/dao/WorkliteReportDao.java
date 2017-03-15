package wtyw.worklite.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.beans.WorkliteReportMonth;
import wtyw.worklite.beans.WorkliteReportWeekly;
import wtyw.worklite.mapper.WorkliteReportMonthMapper;
import wtyw.worklite.mapper.WorkliteReportWeeklyMapper;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteReportDao {
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;

	// ָ�����ݿ�
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}

	public void addReportWeekly(WorkliteReportWeekly rw) {
		// �����ܱ������Ϣ
		String sql = "insert into worklite_report_weekly values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		jdbcTemplateObject.update(sql, rw.getRw_id(), rw.getRw_title(),
				rw.getRw_system(), rw.getRw_year(), rw.getRw_cycle(),
				rw.getRw_issue_person(), rw.getRw_issue_date(),
				rw.getRw_check_person(),rw.getRw_status(),rw.getRw_encloser(),rw.getRw_check_suggest(),rw.getRw_file_path());
        
		//���´����������ļ�¼
	    String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
	    jdbcTemplateObject.update(sql2, 
                rw.getRw_id(), 
                rw.getRw_title(), 
                rw.getRw_status(),
                rw.getRw_issue_date(),
                rw.getRw_check_person(),
                "һ��");	
		return;
	}
	
	public void addReportMonth(WorkliteReportMonth rm) {
		// �����±������Ϣ
		String sql = "insert into WORKLITE_REPORT_MONTH (" + "RM_ID," + "RM_TITLE,"
				+ "RM_YEAR," + "RM_ISSUE," + "RM_ISSUE_PERSON,"+ "RM_ISSUE_DATE,"
				+ "RM_CHECK_PERSON,"+ "RM_STATUS," + "RM_REMARK3,"+"RM_FILE_PATH )"
			    + "values" + " (?,?,?,?,?,?,?,?,?,?)";
		
		
		jdbcTemplateObject.update(sql, rm.getRm_id(), rm.getRm_title(),
				rm.getRm_year(), rm.getRm_issue(), rm.getRm_issue_person(),
				rm.getRm_issue_date(), rm.getRm_check_person(),rm.getRm_status(),
				rm.getRm_remark3(),rm.getRm_file_path());
		
        //���´����������ļ�¼
	    String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
	    jdbcTemplateObject.update(sql2, 
                rm.getRm_id(), 
                rm.getRm_title(), 
                rm.getRm_status(),
                rm.getRm_issue_date(),
                rm.getRm_check_person(),
                "һ��");	
		return;
	}
	
	//�ܱ���ҳ��ѯ
	   public PageModelByIndication findByPageForWeekly(int pageNo,int pageSize, WorkliteReportWeekly worklitereportweekly,
			   String weekly_begin_date, String weekly_end_date){
		   System.out.println("-----weekly dao------");
		   //���㿪ʼ��¼�ͽ�ֹ��¼
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL��䣺���ݿ�ʼ��¼�ͽ�ֹ��¼��ѯ��
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_report_weekly where " +
		   		"rw_year like '" + worklitereportweekly.getRw_year()+
		   		"' and rw_system like '"+worklitereportweekly.getRw_system()+
		   		"' and rw_issue_person like '"+worklitereportweekly.getRw_issue_person()+
		   		"' and ( rw_issue_date <= '"+weekly_end_date+
		   		"' and rw_issue_date >= '"+weekly_begin_date+
		   		"' ) order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //ʹ��List������ݱ��¼
		   List<WorkliteReportWeekly> list = jdbcTemplateObject.query(sql,new WorkliteReportWeeklyMapper());
		   //����PageModel����
		   PageModelByIndication pageModel = new PageModelByIndication();
		   pageModel.setPageNo(pageNo);
		   pageModel.setTotalRecords(getTotalWeeklyRecords(worklitereportweekly, weekly_begin_date, weekly_end_date));
		   pageModel.setPageSize(pageSize);
		   
			if(worklitereportweekly.getRw_year().equals("%%")){
				worklitereportweekly.setRw_year("");
	        }
			if(worklitereportweekly.getRw_issue_person().equals("%%")){
				worklitereportweekly.setRw_issue_person("");
	        }
			if(worklitereportweekly.getRw_system().equals("%%")){
				worklitereportweekly.setRw_system("");
	        }
		   pageModel.setWorklitereportweekly(worklitereportweekly);
		   pageModel.setWeekly_begin_date(weekly_begin_date);
		   pageModel.setWeekly_end_date(weekly_end_date);
	       pageModel.setList(list);
	       //����pageModel����
	       return pageModel;
	   }

	   private int getTotalWeeklyRecords(WorkliteReportWeekly rw,
			   String weekly_begin_date, String weekly_end_date){
		   String sql = "select count(rw_id) from worklite_report_weekly where " +
			"rw_year like '" + rw.getRw_year()+
	   		"' and rw_system like '"+rw.getRw_system()+
	   		"' and rw_issue_person like '"+rw.getRw_issue_person()+
	   		"' and ( rw_issue_date <= '"+weekly_end_date+
	   		"' and rw_issue_date >= '"+weekly_begin_date+
	   		"' )";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }
	   
	   
	   
	   //�±���ҳ��ѯ
	   public PageModelByIndication findByPageForMonth(int pageNo,int pageSize, WorkliteReportMonth worklitereportmonth,
			   String month_begin_date, String month_end_date){
		   
		   //���㿪ʼ��¼�ͽ�ֹ��¼
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL��䣺���ݿ�ʼ��¼�ͽ�ֹ��¼��ѯ��
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_report_month where " +
		   		"rm_year like '" + worklitereportmonth.getRm_year() +
		   		"' and rm_issue_person like '"+worklitereportmonth.getRm_issue_person()+
		   		"' and ( rm_issue_date <= '"+month_end_date+
		   		"' and rm_issue_date >= '"+month_begin_date+
		   		"' ) order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //ʹ��List������ݱ��¼
		   List<WorkliteReportMonth> list = jdbcTemplateObject.query(sql,new WorkliteReportMonthMapper());
		   //����PageModel����
		   PageModelByIndication pageModel = new PageModelByIndication();
		   pageModel.setPageNo(pageNo);
		   pageModel.setTotalRecords(getTotalMonthRecords(worklitereportmonth, month_begin_date, month_end_date));
		   pageModel.setPageSize(pageSize);
			if(worklitereportmonth.getRm_year().equals("%%")){
				worklitereportmonth.setRm_year("");
	        }
			if(worklitereportmonth.getRm_issue_person().equals("%%")){
				worklitereportmonth.setRm_issue_person("");
	        }
		   pageModel.setWorklitereportmonth(worklitereportmonth);
		   pageModel.setMonth_begin_date(month_begin_date);
		   pageModel.setMonth_end_date(month_end_date);
	       pageModel.setList(list);
	       //����pageModel����
	       return pageModel;
	   }

	   private int getTotalMonthRecords(WorkliteReportMonth rm,
			   String month_begin_date, String month_end_date){
		   String sql = "select count(rm_id) from worklite_report_month where " +
		   "rm_year like '" + rm.getRm_year() +
	   		"' and rm_issue_person like '"+rm.getRm_issue_person()+
	   		"' and ( rm_issue_date <= '"+month_end_date+
	   		"' and rm_issue_date >= '"+month_begin_date+
	   		"' )";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }
	   
	   public WorkliteReportWeekly queryReportWeeklyDetail(String rw_id){
			WorkliteReportWeekly wrw;
			String sql = "select * from worklite_report_weekly where rw_id = ?";
			List<WorkliteReportWeekly> list = jdbcTemplateObject.query(sql,new Object[] {rw_id}, new WorkliteReportWeeklyMapper());
			if (list.isEmpty()) {
				return null;
			} else {
				wrw = list.get(0);
				return wrw;
			}	   
	   }
	   
       public WorkliteReportMonth queryReportMonthDetail(String rm_id){
			WorkliteReportMonth wrm;
			String sql = "select * from worklite_report_month where rm_id = ?";
			List<WorkliteReportMonth> list = jdbcTemplateObject.query(sql,new Object[] {rm_id}, new WorkliteReportMonthMapper());
			if (list.isEmpty()) {
				return null;
			} else {
				wrm = list.get(0);
				return wrm;
			}	
	   }  
   	//����˹������ύ���ͨ��������
   	public void issueReportWeekly(WorkliteReportWeekly worklitereportweekly){
             //�޸�֪ʶ���֪ʶ״̬
   		  String sql = "update worklite_report_weekly set " +
   		  		     "rw_status=?, " +
   		             "rw_check_suggest=? " +
   		             "where rw_id=?";
   	      jdbcTemplateObject.update(sql, 
   	    		worklitereportweekly.getRw_status(), 
   	    		worklitereportweekly.getRw_check_suggest(), 
   	    		worklitereportweekly.getRw_id());
   	       //���´����������ļ�¼
   	       String sql2 = "delete from worklite_todoing where wd_id=?";
   	       jdbcTemplateObject.update(sql2, worklitereportweekly.getRw_id());
   		return;
   	}	
   	
   	//����˹������ύ��˲�ͨ��
   	public void rollbackReportWeekly(WorkliteReportWeekly worklitereportweekly){
   		  String sql = "update worklite_report_weekly set " +
  		               "rw_status=?, " +
	                   "rw_check_suggest=? " +
	                   "where rw_id=?";
   	       jdbcTemplateObject.update(sql, 
      	    		   worklitereportweekly.getRw_status(), 
       	    		   worklitereportweekly.getRw_check_suggest(), 
       	    		   worklitereportweekly.getRw_id());
   	       //���´����������ļ�¼
   	       String sql2 = "update worklite_todoing set " +
   			          "wd_type=?, " +
   			          "wd_person=? " +
   			          "where wd_id=?";
   	       jdbcTemplateObject.update(sql2, 
   	    		     worklitereportweekly.getRw_status(), 
   		             worklitereportweekly.getRw_issue_person(), 
   			         worklitereportweekly.getRw_id());
   		return;
   	}
   	
	//����˹������ύ���ͨ��������
	public void issueReportMonth(WorkliteReportMonth worklitereportmonth){
          //�޸�֪ʶ���֪ʶ״̬
		  System.out.println(worklitereportmonth.getRm_check_suggest());
		  System.out.println(worklitereportmonth.getRm_id());
		  System.out.println(worklitereportmonth.getRm_status());
		  String sql = "update worklite_report_month set " +
		  		     "rm_status=?, " +
		             "rm_check_suggest=? " +
		             "where rm_id=?";
	      jdbcTemplateObject.update(sql, 
	    		  worklitereportmonth.getRm_status(), 
	    		  worklitereportmonth.getRm_check_suggest(), 
	    		  worklitereportmonth.getRm_id());
	       //���´����������ļ�¼
	       System.out.println(worklitereportmonth.getRm_check_suggest());
	       String sql2 = "delete from worklite_todoing where wd_id=?";
	       jdbcTemplateObject.update(sql2, worklitereportmonth.getRm_id());
		return;
	}	
	
	//����˹������ύ��˲�ͨ��
	public void rollbackReportMonth(WorkliteReportMonth worklitereportmonth){
          //Ϊ֪ʶ��(worklite_knowledge)����һ��֪ʶ
		  String sql = "update worklite_report_month set " +
		               "rm_status=?, " +
                       "rm_check_suggest=? " +
                        "where rm_id=?";
	       jdbcTemplateObject.update(sql, 
		    		  worklitereportmonth.getRm_status(), 
		    		  worklitereportmonth.getRm_check_suggest(), 
		    		  worklitereportmonth.getRm_id());
	       //���´����������ļ�¼
	       String sql2 = "update worklite_todoing set " +
			          "wd_type=?, " +
			          "wd_person=? " +
			          "where wd_id=?";
	       jdbcTemplateObject.update(sql2, 
	    		     worklitereportmonth.getRm_status(), 
		             worklitereportmonth.getRm_issue_person(), 
			         worklitereportmonth.getRm_id());
		return;
	}
       
}



