package wtyw.worklite.dao;

import java.util.List;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.beans.WorkliteCheckDetailPersonal;
import wtyw.worklite.mapper.WorkliteCheckDetailPersonalMapper;
import wtyw.worklite.util.PageModelByIndication;


public class WorkliteCheckDao {
	
	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;
	
	//ָ�����ݿ�
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	
    //���뿼����Ϣͳ�Ʊ�(����)
	public void addCheckDetailPersonal(WorkliteCheckDetailPersonal worklitecheckdetailpersonal) {
		String sql="insert into worklite_check_detail_personal values (?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql,
				worklitecheckdetailpersonal.getCheck_project_institution(),
				worklitecheckdetailpersonal.getCheck_project(),
				worklitecheckdetailpersonal.getCheck_name(),
				worklitecheckdetailpersonal.getCheck_identification(),
				worklitecheckdetailpersonal.getCheck_owner_institution(),
				worklitecheckdetailpersonal.getCheck_date(),
				worklitecheckdetailpersonal.getCheck_type(),
				worklitecheckdetailpersonal.getCheck_begin_time(),
				worklitecheckdetailpersonal.getCheck_end_time(),
				worklitecheckdetailpersonal.getCheck_classes(),
				worklitecheckdetailpersonal.getCheck_personal_date());
		return;
	}

	
	   //��ҳ��ѯ
	   public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteCheckDetailPersonal checkDetailPersonal){ 	   
		   //���㿪ʼ��¼�ͽ�ֹ��¼
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL��䣺���ݿ�ʼ��¼�ͽ�ֹ��¼��ѯ��
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_check_detail_personal where " +
		   		        "check_name like '" + checkDetailPersonal.getCheck_name() + 
		   		        "' and check_project like '"+checkDetailPersonal.getCheck_project() +
		   		        "' and check_owner_institution like '"+checkDetailPersonal.getCheck_owner_institution() +
		   		        "' and ( check_end_time <= '" + checkDetailPersonal.getCheck_end_time() +
		   		        "' and check_begin_time >= '" + checkDetailPersonal.getCheck_begin_time() +
		   		        "' ) order by check_date desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //ʹ��List������ݱ��¼
		   List<WorkliteCheckDetailPersonal> list = jdbcTemplateObject.query(sql,new WorkliteCheckDetailPersonalMapper());
		   //����PageModel����
		   PageModelByIndication pageModel = new PageModelByIndication();
		   //ΪpageModel���Ӳ�ѯ����
		   
		   pageModel.setTotalRecords(getTotalRecords(checkDetailPersonal));
		   pageModel.setPageNo(pageNo);		   
	       pageModel.setPageSize(pageSize);
	       if(checkDetailPersonal.getCheck_name().equals("%%")){
	    	   checkDetailPersonal.setCheck_name("");
	       }
	       if(checkDetailPersonal.getCheck_project().equals("%%")){
	    	   checkDetailPersonal.setCheck_project("");
	       }
	       if(checkDetailPersonal.getCheck_owner_institution().equals("%%")){
	    	   checkDetailPersonal.setCheck_owner_institution("");
	       }		   
		   pageModel.setCheckDetailPersonal(checkDetailPersonal);
	       pageModel.setList(list);
	       //����pageModel����
	       return pageModel;
	   }

	   private int getTotalRecords(WorkliteCheckDetailPersonal checkDetailPersonal){
		   String sql = "select count(check_name) from worklite_check_detail_personal where" +
		   		        " check_name like '" + checkDetailPersonal.getCheck_name() + 
		   		        "' and check_project like '"+checkDetailPersonal.getCheck_project() +
		   		        "' and check_owner_institution like '"+checkDetailPersonal.getCheck_owner_institution() +
		   		        "' and ( check_end_time <= '" + checkDetailPersonal.getCheck_end_time() +
		   		        "' and check_begin_time >= '" + checkDetailPersonal.getCheck_begin_time() +
		   		        "' )";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }

	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}


	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
	}


	public DataSource getDatasource() {
		return datasource;
	}
	
	
}
