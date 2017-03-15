package wtyw.worklite.service;

import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.beans.WorkliteBook;
import wtyw.worklite.beans.WorkliteBookBor;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.dao.*;

public class BookService {

	private WorkliteBookDao workliteBookDao;
	private WorkliteBookBor workliteBookBor;

	public void addWorkliteBook(WorkliteBook worklitebook) {
		worklitebook.setBook_id(new GenerateID().generateBookId());
		worklitebook.setBook_savetime(new GenerateCurrentDate()
				.getCurrentDate());
		worklitebook.setBook_status("可借阅");
		this.workliteBookDao.addWorklite_book(worklitebook);
		return;
	}

	public WorkliteBook queryWorklitebook(String bookid) {
		WorkliteBook worrlitebook = null;
		try {
			if (!"".equals(bookid) && bookid != null && !"null".equals(bookid)) {
				worrlitebook = this.workliteBookDao.queryWorkliteBook(bookid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return worrlitebook;
	};

	public String annulworklitebook(String bookid) {
		String result = null;
		try {
			if (!"".equals(bookid) && bookid != null && !"null".equals(bookid)) {
				WorkliteBook worrlitebook = this.workliteBookDao
						.queryWorkliteBook(bookid);
				if (worrlitebook.getBook_status().equals("已借阅")) {
					result = "have_lend";
				} else if (worrlitebook.getBook_status().equals("已注销")) {
					result = "have_annul";
				} else {
					this.workliteBookDao.annulWorkliteBook(bookid);
					result = "annul_success";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String updateWorklitebook(WorkliteBook worrlitebook) {
		String result = "fail";
		try {
			if (!"".equals(worrlitebook.getBook_id())
					&& worrlitebook.getBook_id() != null
					&& !"null".equals(worrlitebook.getBook_id())) {
				this.workliteBookDao.updateWorkliteBook(worrlitebook);
				result = "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String querybookstatus(String bookid) {
		String result = "fail";
		WorkliteBook worrlitebook = this.workliteBookDao
				.queryWorkliteBook(bookid);
		if (worrlitebook.getBook_status().equals("已借阅")) {
			result = "success";
		}
		return result;
	}

	public String lendBook(String bookid, WorkliteBookBor workliteBookBor) {
		GenerateID generateid = new GenerateID();
		String lend_id = generateid.generateBookLendId();
		workliteBookDao.useWorkliteBook(bookid,
				workliteBookBor.getBook_borrowp(),
				workliteBookBor.getBook_borrowtime(), lend_id,workliteBookBor.getBook_name());
		return "lend_success";
	}

	public WorkliteBookBor queryWorkliteBookLend(String bookid) {
		WorkliteBookBor workliteBookBor = null;
		try {
			if (!"".equals(bookid) && bookid != null && !"null".equals(bookid)) {
				workliteBookBor = this.workliteBookDao.queryBookLend(bookid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return workliteBookBor;
	}

	public String backBook(WorkliteBookBor workliteBookBor) throws Exception {
		try {
			this.workliteBookDao.backWorklireBook(workliteBookBor.getBook_id(),workliteBookBor.getBook_returntime(), workliteBookBor.getBook_returnp());
			return "return_success";
		}
		catch (Exception e){
			return "fail";
		}
	
	}

	// 按条件查询分页显示
	public PageModelByIndication findByPage(int pageNo, int pageSize,
			WorkliteBook worklitebook) {
		if (worklitebook.getBook_id().equals("")) {
			worklitebook.setBook_id("%%");
		}
		if (worklitebook.getBook_name().equals("")) {
			worklitebook.setBook_name("%%");
		}
		if (worklitebook.getBook_writer().equals("")) {
			worklitebook.setBook_writer("%%");
		}
		if (worklitebook.getBook_status().equals("")) {
			worklitebook.setBook_status("%%");
		}
		return workliteBookDao.findByPageByIndication(pageNo, pageSize,
				worklitebook);

	}

	public WorkliteBookDao getWorkliteBookDao() {
		return workliteBookDao;
	}

	public void setWorkliteBookDao(WorkliteBookDao workliteBookDao) {
		this.workliteBookDao = workliteBookDao;
	}

	public WorkliteBookBor getWorkliteBookBor() {
		return workliteBookBor;
	}

	public void setWorkliteBookBor(WorkliteBookBor workliteBookBor) {
		this.workliteBookBor = workliteBookBor;
	}

}
