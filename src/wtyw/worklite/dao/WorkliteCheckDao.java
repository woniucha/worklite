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
	
	//指定数据库
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}
	
    //导入考勤信息统计表(个人)
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

	
	   //分页查询
	   public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteCheckDetailPersonal checkDetailPersonal){ 	   
		   //计算开始记录和截止记录
		   int begin = (pageNo-1)*pageSize+1;
		   int end = (pageNo-1)*pageSize+10;
	       //SQL语句：根据开始记录和截止记录查询表
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_check_detail_personal where " +
		   		        "check_name like '" + checkDetailPersonal.getCheck_name() + 
		   		        "' and check_project like '"+checkDetailPersonal.getCheck_project() +
		   		        "' and check_owner_institution like '"+checkDetailPersonal.getCheck_owner_institution() +
		   		        "' and ( check_end_time <= '" + checkDetailPersonal.getCheck_end_time() +
		   		        "' and check_begin_time >= '" + checkDetailPersonal.getCheck_begin_time() +
		   		        "' ) order by check_date desc) a where rownum <= " + end +" ) where rn >= " + begin;
		   //使用List存放数据表记录
		   List<WorkliteCheckDetailPersonal> list = jdbcTemplateObject.query(sql,new WorkliteCheckDetailPersonalMapper());
		   //生成PageModel对象
		   PageModelByIndication pageModel = new PageModelByIndication();
		   //为pageModel增加查询条件
		   
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
	       //返回pageModel对象
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
