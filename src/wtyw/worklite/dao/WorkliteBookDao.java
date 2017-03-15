package wtyw.worklite.dao;

import java.util.*;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import wtyw.worklite.beans.WorkliteBook;
import wtyw.worklite.beans.WorkliteBookBor;
import wtyw.worklite.mapper.WorkliteBookMapper;
import wtyw.worklite.mapper.WorkliteBookBroMapper;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.PageModelByIndication;

public class WorkliteBookDao {

	private DataSource datasource;
	private JdbcTemplate jdbcTemplateObject;


	public void addWorklite_book(WorkliteBook worklitebook) {

		String sql = "insert into WORKLITE_BOOK_INFO values (?,?,?,?,?,?,?,?)";
		jdbcTemplateObject.update(sql, worklitebook.getBook_id(), worklitebook
				.getBook_name(), worklitebook.getBook_writer(), worklitebook
				.getBook_press(), worklitebook.getBook_price(), worklitebook
				.getBook_disk(), worklitebook.getBook_savetime(), worklitebook
				.getBook_status());
		return;
	}

	public WorkliteBook queryWorkliteBook(String book_id) {
		WorkliteBook BI;
		String sql = "select * from WORKLITE_BOOK_INFO where book_id = ? ";
		List<WorkliteBook> list = jdbcTemplateObject.query(sql,
				new Object[] { book_id }, new WorkliteBookMapper());
		if (list.isEmpty()) {
			return null;
		} else {
			BI = list.get(0);
			return BI;
		}
	}


	public void updateWorkliteBook(WorkliteBook worklitebook) {

		String sql = "update WORKLITE_BOOK_INFO  set book_name=?,book_writer=?,book_press=?,book_price=?,book_disk=?,book_savetime=?,book_status=? where book_id=?";
		jdbcTemplateObject.update(sql, worklitebook
				.getBook_name(), worklitebook.getBook_writer(), worklitebook
				.getBook_press(), worklitebook.getBook_price(), worklitebook
				.getBook_disk(), worklitebook.getBook_savetime(), worklitebook
				.getBook_status(), worklitebook.getBook_id());
		return;
	}


	public String annulWorkliteBook(String book_id) {

		String sql = "update WORKLITE_BOOK_INFO set book_status='已注销' where book_id=?";
		jdbcTemplateObject.update(sql, book_id);
		return "success";
	}


	public void useWorkliteBook(String book_id, String book_borrowp,
			String book_borrowtime, String book_registerid,String book_name) {
		String sql1 = "insert into WORKLITE_BOOK_BORROW(book_id,book_borrowp,book_borrowtime,book_registerid,lend_status,book_name) values(?,?,?,?,1,?)";
		jdbcTemplateObject.update(sql1, book_id, book_borrowp, book_borrowtime,
				book_registerid,book_name);
		String sql = "update WORKLITE_BOOK_INFO set book_status='已借阅' where book_id=?";
		jdbcTemplateObject.update(sql, book_id);
		

	}

	public void backWorklireBook(String bookid, String book_returntime,
			String book_returnp) {
		String sql = "update WORKLITE_BOOK_INFO set book_status='可借阅'  where book_id=?";
		jdbcTemplateObject.update(sql, bookid);
		String sql2 = "update WORKLITE_BOOK_BORROW set book_returntime=?,book_returnp=?,lend_status='0' where book_id=? and lend_status='1'";
		jdbcTemplateObject.update(sql2, book_returntime, book_returnp, bookid);
	}

	public WorkliteBookBor queryBookLend(String bookid) {
		List<WorkliteBookBor> workliteBookBors = null;
		WorkliteBookBor workliteBookBor = null;
		String sql = "select * from WORKLITE_BOOK_BORROW where book_id=? and lend_status = '1'";
		workliteBookBors = jdbcTemplateObject.query(sql,
				new Object[] { bookid }, new WorkliteBookBroMapper());
		if (workliteBookBors.isEmpty()) {
			return workliteBookBor;
		} else {
			workliteBookBor = workliteBookBors.get(0);
			return workliteBookBor;
		}
	}
	
	public List<WorkliteBook> allWorkliteBook() {
		List<WorkliteBook> worklitebooks = null;
		String sql = "select * from WORKLITE_BOOK_INFO ";
		worklitebooks = jdbcTemplateObject.query(sql, new WorkliteBookMapper());

		return worklitebooks;
	}


	public PageModelByIndication findByPageByIndication(int pageNo,int pageSize, WorkliteBook worklitebook) {

		int begin = (pageNo - 1) * pageSize + 1;
		int end = (pageNo - 1) * pageSize + 10;
		 //SQL语句：根据开始记录和截止记录查询表
		   String sql = "select * from (select a.*,rownum rn from (select * from worklite_book_info where " +
		   		"book_id like '" + worklitebook.getBook_id()+
		   		"' and book_status like '"+worklitebook.getBook_status()+
		   		"' and book_name like '"+worklitebook.getBook_name()+
		   		"' and book_writer like '"+worklitebook.getBook_writer()+
		   		"' order by rowid desc) a where rownum <= " + end +" ) where rn >= " + begin;
		List<WorkliteBook> list = jdbcTemplateObject.query(sql,
				new WorkliteBookMapper());
		PageModelByIndication pageModel = new PageModelByIndication();
		pageModel.setPageNo(pageNo);
		pageModel.setTotalRecords(getTotalRecords(worklitebook));
		pageModel.setPageSize(pageSize);		
		if(worklitebook.getBook_id().equals("%%")){
			worklitebook.setBook_id("");
        }
		if(worklitebook.getBook_name().equals("%%")){
			worklitebook.setBook_name("");
        }
		if(worklitebook.getBook_writer().equals("%%")){
			worklitebook.setBook_writer("");
        }
		if(worklitebook.getBook_status().equals("%%")){
			worklitebook.setBook_status("");
        }		
		pageModel.setWorklitebook(worklitebook);
		pageModel.setList(list);
		return pageModel;
	}
	
	  private int getTotalRecords(WorkliteBook worklitebook){
		   String sql = "select count(book_id) from worklite_book_info where " +
		   		"book_id like '" + worklitebook.getBook_id() +
		   		"' and book_status like '"+worklitebook.getBook_status()+
		   		"' and book_name like '"+worklitebook.getBook_name()+
		   		"' and book_writer like '"+worklitebook.getBook_writer()+
		   		"'";
		   int totalRecords = jdbcTemplateObject.queryForInt(sql);
		   return (totalRecords);
	   }

	public PageModel findByPage_lend(int pageNo, int pageSize,String book_id) {

		int begin = (pageNo - 1) * pageSize + 1;
		int end = (pageNo - 1) * pageSize + 10;
		String sql = "select * from (select a.*,rownum rn from (select * from WORKLITE_BOOK_BORROW where book_id=? order by rowid desc) a where rownum <= "
				+ end + " ) where rn >= " + begin;
		List<WorkliteBookBor> list = jdbcTemplateObject.query(sql,new Object[] { book_id },
				new WorkliteBookBroMapper());
		PageModel pageModel = new PageModel();
		pageModel.setPageNo(pageNo);
		pageModel.setTotalRecords(getTotalRecords_lend(book_id));
		pageModel.setPageSize(pageSize);
		pageModel.setList(list);
		return pageModel;
	}

	private int getTotalRecords_lend(String book_id) {

		String sql = "select count(book_id) from worklite_book_borrow where book_id=?";
		int totalRecords = jdbcTemplateObject.queryForInt(sql,new Object[] { book_id });
		return (totalRecords);
	}

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

	public DataSource getDatasource() {
		return datasource;
	}
	
}
