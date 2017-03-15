package wtyw.worklite.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.beans.WorkliteVacation;
import wtyw.worklite.mapper.WorkliteKnowledgeMapper;
import wtyw.worklite.mapper.WorkliteVacationMapper;
import wtyw.worklite.util.NewDate;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteVacationDao {

	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;

	// 指定数据库
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbcTemplateObject = new JdbcTemplate(datasource);
	}

	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}

	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
	}

	// 新建请假申请
	public void applyWorklite_vacation(WorkliteVacation worklitevacation) {
		String sql = "insert into worklite_vacation (vacation_id,vacation_title,vacation_priority,vacation_person,vacation_post,vacation_project,vacation_corporation,vacation_corporation_verify,vacation_bank_verify,vacation_type,vacation_day_num,vacation_startdate,vacation_enddate,vacation_already_day_num,vacation_reason,vacation_commitdate,vacation_status,vacation_userid) "
				+ "values" + " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						jdbcTemplateObject.update(sql,
						 worklitevacation.getVacation_id(),
				worklitevacation.getVacation_title(),
				worklitevacation.getVacation_priority(),
				worklitevacation.getVacation_person(),
				worklitevacation.getVacation_post(),
				worklitevacation.getVacation_project(),
				worklitevacation.getVacation_corporation(),
				worklitevacation.getVacation_corporation_verify(),
				worklitevacation.getVacation_bank_verify(),
				worklitevacation.getVacation_type(),
				worklitevacation.getVacation_day_num(),
				worklitevacation.getVacation_startdate(),
				worklitevacation.getVacation_enddate(),
				worklitevacation.getVacation_already_day_num(),
				worklitevacation.getVacation_reason(),
				worklitevacation.getVacation_commitdate(),
				worklitevacation.getVacation_status(),
				worklitevacation.getVacation_userid());

		// 待办事项表(worklite_todoing)新增一条待办事项
		String sql2 = "insert into worklite_todoing values(?,?,?,?,?,?)";
				jdbcTemplateObject.update(sql2,
				 worklitevacation.getVacation_id(),
				worklitevacation.getVacation_title(),
				worklitevacation.getVacation_status(),
				worklitevacation.getVacation_commitdate(),
				worklitevacation.getVacation_corporation_verify(),
				worklitevacation.getVacation_priority());
		return;
	}

	// 公司审核
	public void verifyVacationByCorp(WorkliteVacation worklitevacation,
			String vacationResult) {
		if (vacationResult.equals("pass")) {
			String sql = "update worklite_vacation set " +
				 "vacation_corpopinion=?, " +
				 "vacation_corpdate=?, "+
				  "vacation_status=? " +
				  "where vacation_id=?";
			jdbcTemplateObject.update(sql,
					worklitevacation.getVacation_corpopinion(),
					worklitevacation.getVacation_corpdate(),
					worklitevacation.getVacation_status(),
					worklitevacation.getVacation_id());
			// 更新待办事项表里的记录
			String sql2 = "update worklite_todoing set " +
			"wd_type=?, "+
			"wd_person=? " +
			"where wd_id =?";
			jdbcTemplateObject.update(sql2,
					worklitevacation.getVacation_status(),
					worklitevacation.getVacation_bank_verify(),
					worklitevacation.getVacation_id());
			return;
		} else
		{
					String sql = "update worklite_vacation set "+
					 "vacation_corpopinion=?, " +
					 "vacation_corpdate=?, "+
					  "vacation_status=? " +
					  "where vacation_id=?";
			jdbcTemplateObject.update(sql,
					worklitevacation.getVacation_corpopinion(),
					worklitevacation.getVacation_corpdate(),
					worklitevacation.getVacation_status(),
					worklitevacation.getVacation_id());
			// 更新待办事项表里的记录
			String sql2 = "delete worklite_todoing where wd_id=?";
			jdbcTemplateObject.update(sql2, worklitevacation.getVacation_id());
			return;
		}
	}

	// 行方审核
	public void verifyVacationByBank(WorkliteVacation worklitevacation,	String vacationResult) {
		if (vacationResult.equals("pass")) {
			String sql = "update worklite_vacation set "+
					 "vacation_bankopinion=?, " +
					 "vacation_bankdate=?, "+
					  "vacation_status=? " +
					   "where vacation_id=?";
			jdbcTemplateObject.update(sql,
					worklitevacation.getVacation_bankopinion(),
					worklitevacation.getVacation_bankdate(),
					worklitevacation.getVacation_status(),
					worklitevacation.getVacation_id());
			// 更新待办事项表里的记录
			String sql2 = "delete worklite_todoing where wd_id=?";
			jdbcTemplateObject.update(sql2, worklitevacation.getVacation_id());
			return;
		} else
		{
			String sql = "update worklite_vacation set "+
					 "vacation_bankopinion=?, " +
					 "vacation_bankdate=?, "+
					  "vacation_status=? " +
					   "where vacation_id=?";
			jdbcTemplateObject.update(sql,
					worklitevacation.getVacation_bankopinion(),
					worklitevacation.getVacation_bankdate(),
					worklitevacation.getVacation_status(),
					worklitevacation.getVacation_id());
			// 更新待办事项表里的记录
			String sql2 = "delete worklite_todoing where wd_id=?";
			jdbcTemplateObject.update(sql2, worklitevacation.getVacation_id());
			return;
		}
	}

	// 查询请假明细
//	public WorkliteVacation queryVacationDetail(String vacation_id) {
//		WorkliteVacation wv;
//		String sql = "select * from worklite_vacation where vacation_id = ?";
//		List<WorkliteVacation> list = jdbcTemplateObject.query(sql,
/*				new Object[] { vacation_id }, new WorkliteVacationMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			wv = list.get(0);
			return wv;
		}
	}
*/

public WorkliteVacation queryVacationDetail(String vacation_id) throws Exception{
		WorkliteVacation wv;
		String sql = "select * from worklite_vacation where vacation_id = ?";
		String flag="审核通过";
		Double days=0.0;
		int year=NewDate.newYear();
		long diff1=0;
		long diff2=0;
		List<WorkliteVacation> list = jdbcTemplateObject.query(sql,
				new Object[] { vacation_id }, new WorkliteVacationMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			wv = list.get(0);
			String sql1= "select * from worklite_vacation where " +
			" vacation_status = ? and vacation_person = ?" +
			" and vacation_enddate >= '"+(year-1)+"-01-01"+
			"' and vacation_enddate <= '"+(year+1)+"-12-31'";
			System.out.println(sql1);
			List<WorkliteVacation> list1 = jdbcTemplateObject.query(sql1,
					new Object[] { flag,wv.getVacation_person() }, new WorkliteVacationMapper());
			for(int i=0;i<list1.size();i++){
				//若开始日期年份在上一年并且结束日期在当前年,用结束日期减去year+"-01-01"
				if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year-1+"")&&
				   list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+"")){
					diff1=NewDate.betweenDate(year+"-01-01", list1.get(i).getVacation_enddate())+1;
				
				}
				//若开始日期年份在当前年并且结束日期年份在后一年,用year+"-12-31"减去开始日期
				if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year+"")&&
					list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+1+"")){
					diff2=NewDate.betweenDate(list1.get(i).getVacation_startdate(), year+"-12-31")+1;
				}
				//若开始日期年份和结束日期年份都在当前年
				if(list1.get(i).getVacation_startdate().replace(" ", "").substring(0, 4).equals(year+"")&&
				   list1.get(i).getVacation_enddate().replace(" ", "").substring(0, 4).equals(year+"")){
				   days=days+Double.parseDouble(list1.get(i).getVacation_day_num());
				}
			}
			wv.setVacation_already_day_num(diff1+diff2+days+"");
			return wv;
		}
	}
	// 分页查询
//	public PageModel findByPage(int pageNo, int pageSize) {
//		// 计算开始记录和截止记录
//		int begin = (pageNo - 1) * pageSize + 1;
//		int end = (pageNo - 1) * pageSize + 10;
//		// SQL语句：根据开始记录和截止记录查询表
//		String sql = "select * from (select a.*,rownum rn from (select * from worklite_vacation order by vacation_commitdate desc) a where rownum <= "
//				+ end + " ) where rn >= " + begin;
//		// 使用List存放数据表记录
//		List<WorkliteVacation> list = jdbcTemplateObject.query(sql,				new WorkliteVacationMapper());
//		// 生成PageModel对象
//		PageModel pageModel = new PageModel();
//		pageModel.setPageNo(pageNo);
//		pageModel.setTotalRecords(getTotalRecords());
//		pageModel.setPageSize(pageSize);
//		pageModel.setList(list);
//		// 返回pageModel对象
//		return pageModel;
//	}

	//请假查询
	public PageModelByIndication findvacationByPage(int pageNo, int pageSize,
			WorkliteVacation workliteVacation) {
		int begin = (pageNo - 1) * pageSize + 1;
		int end = (pageNo - 1) * pageSize + 10;
		String sql = "select * from (select a.*,rownum rn from (select * from worklite_vacation where vacation_id like '"
				+ workliteVacation.getVacation_id()
				+ "' and vacation_person like '"
				+ workliteVacation.getVacation_person()
				+ "' and vacation_corporation like '"
				+ workliteVacation.getVacation_corporation()
				+ "' and vacation_startdate >= '"
				+ workliteVacation.getVacation_startdate()
				+ "' and vacation_enddate <= '"
				+ workliteVacation.getVacation_enddate()
				+ "' and vacation_status like '"
				+ workliteVacation.getVacation_status()
				+ "' order by vacation_commitdate desc) a where rownum <= "
				+ end
				+ " ) where rn >= " + begin;
		System.out.println(sql);
		List<WorkliteVacation> list = jdbcTemplateObject.query(sql,
				new WorkliteVacationMapper());

		PageModelByIndication pageModelByIndication = new PageModelByIndication();
		pageModelByIndication.setPageNo(pageNo);
		pageModelByIndication.setTotalRecords(getTotalRecords(workliteVacation));
		pageModelByIndication.setPageSize(pageSize);
		if (workliteVacation.getVacation_id().equals("%%")) {
			workliteVacation.setVacation_id("");
		}
		if (workliteVacation.getVacation_person().equals("%%")) {
			workliteVacation.setVacation_person("");
		}
		if (workliteVacation.getVacation_corporation().equals("%%")) {
			workliteVacation.setVacation_corporation("");
		}
		if (workliteVacation.getVacation_startdate().equals("0000-00-00")) {
			workliteVacation.setVacation_startdate("");
		}
		if (workliteVacation.getVacation_enddate().equals("9999-99-99")) {
			workliteVacation.setVacation_enddate("");
		}
		if (workliteVacation.getVacation_status().equals("%%")) {
			workliteVacation.setVacation_status("");
		}
		pageModelByIndication.setWorklitevacation(workliteVacation);
		pageModelByIndication.setList(list);
		return pageModelByIndication;
	}

	private int getTotalRecords(WorkliteVacation workliteVacation) {
		String sql = "select count(*) from  worklite_vacation where vacation_id like '"
				+ workliteVacation.getVacation_id()
				+ "' and vacation_person like '"
				+ workliteVacation.getVacation_person()
				+ "' and vacation_corporation like '"
				+ workliteVacation.getVacation_corporation()
				+ "' and vacation_startdate >= '"
				+ workliteVacation.getVacation_startdate()
				+ "' and vacation_enddate <= '"
				+ workliteVacation.getVacation_enddate()
				+ "' and vacation_status like '"
				+ workliteVacation.getVacation_status()
				+ "' order by rowid desc";
		int totalRecords = jdbcTemplateObject.queryForInt(sql);
		return (totalRecords);
	}

}
