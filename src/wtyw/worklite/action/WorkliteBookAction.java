package wtyw.worklite.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import wtyw.worklite.service.BookService;
import wtyw.worklite.util.PageModelByIndication;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.beans.WorkliteBook;
import wtyw.worklite.beans.WorkliteBookBor;
import wtyw.worklite.dao.WorkliteBookDao;

import com.opensymphony.xwork2.ActionSupport;

public class WorkliteBookAction extends BaseAction {
	/**
	 * 
	 */
	private BookService bookService;
	private WorkliteBook worklitebook;
	private WorkliteBookBor worklitebookbor;
	private WorkliteBookDao worklite_bookdao;
	private List<WorkliteBook> worklitebooks;
	private int pageNo;
	private int pageSize;
	private PageModelByIndication pageModelByIndication;
	private PageModel pageModel;

	public String addBook() {
		bookService.addWorkliteBook(worklitebook);
		ServletActionContext.getRequest().setAttribute("message",
				"新书已上架，感谢你细致入微的工作!");
		return "addsuccess";
	}

	public String queryBookDetail() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!worklitebook.equals(null)) {
			return "queryDetail_success";
		} else
			return "fail";
	}

	// 图书维护之前检查图书状态，如果不是可借阅状态，则警告。
	public String updateBookDetail() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (worklitebook.getBook_status() != null
				&& worklitebook.getBook_status().equals("可借阅")) {
			return "queryDetail_success";
		} else {
			ServletActionContext.getRequest().setAttribute("message",
					"图书已经被借阅或者被注销，不可以维护信息，请选择其他操作!");
			return "fail";
		}
	}

	//
	public String updateBook() {
		String result = bookService.updateWorklitebook(worklitebook);
		return result;
	}

	// 借阅图书
	public String useQuery() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!((worklitebook.getBook_status().equals("可借阅")))) {
			ServletActionContext.getRequest().setAttribute("message",
					"图书已借出或注销，请您选择其他图书，谢谢!");
			return "use_fail";
		} else {
			return "useQuery_success";
		}
	}

	public String lendBook() {
		String result = null;
		result = bookService.lendBook(worklitebook.getBook_id(),
				worklitebookbor);
		ServletActionContext.getRequest().setAttribute("message",
				"您已成功借阅图书，请爱惜图书并及时归还，便于他人借阅，谢谢");
		return result;
	}

	// 归还令牌之前检查令牌状态，不为已借阅，则警告。
	public String backQuery() {
		String result = "fail";
		String message = "";
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!bookService.querybookstatus(worklitebook.getBook_id()).equals(
				"success")) {
			message = "图书状态未借出，不可归还，谢谢";
		} else {
			worklitebookbor = bookService.queryWorkliteBookLend(worklitebook
					.getBook_id());
			if (worklitebookbor != null) {
				result = "backQuery_success";
				return result;
			} else
				message = "图书状态为已借阅，但归还失败，请联系开发人员，谢谢";

		}
		ServletActionContext.getRequest().setAttribute("message", message);
		return result;
	}
	//归还图书
	public String backBook() throws Exception {
		String result = "";
		result = bookService.backBook(worklitebookbor);
		if (result.equals("return_success")) {
			ServletActionContext.getRequest().setAttribute("message","图书已经归还，谢谢。");
			return result;
		} else {
			ServletActionContext.getRequest().setAttribute("message","图书归还失败，请联系开发人员，谢谢。");
			return result;
		}
	}

	public String annulBook() {
		String result = bookService
				.annulworklitebook(worklitebook.getBook_id());
		if (result.equals("have_lend")) {
			ServletActionContext.getRequest().setAttribute("message",
					"该书已被借阅，不可注销!");
			return "annul_result";
		} else if (result.equals("have_annul")) {
			ServletActionContext.getRequest().setAttribute("message",
					"该书已被注销，不可重复注销!");
			return "annul_result";
		} else {
			ServletActionContext.getRequest().setAttribute("message",
					"该书已注销，谢谢!");
			return "annul_result";
		}
	}

	public String queryAllBook() {
		worklitebooks = worklite_bookdao.allWorkliteBook();
		if (worklitebooks.isEmpty()) {
			return "fail";
		}
		return "query_all_success";
	}

	// public String findByPage(){
	// pageModel = worklite_bookdao.findByPage(pageNo,pageSize);
	// return "findByPage_success";
	// }

	public String findByCondition() {
		pageModelByIndication = bookService.findByPage(pageNo, pageSize,
				worklitebook);
		return "success_findByCondition";
	}

	public String findByPage_booklend() {
		pageModel = worklite_bookdao.findByPage_lend(pageNo, pageSize,
				worklitebook.getBook_id());
		return "findByPage_lend_success";
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

	public PageModelByIndication getPageModelByIndication() {
		return pageModelByIndication;
	}

	public void setPageModelByIndication(
			PageModelByIndication pageModelByIndication) {
		this.pageModelByIndication = pageModelByIndication;
	}

	public PageModel getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public WorkliteBook getWorklitebook() {
		return worklitebook;
	}

	public void setWorklitebook(WorkliteBook worklitebook) {
		this.worklitebook = worklitebook;
	}

	public WorkliteBookBor getWorklitebookbor() {
		return worklitebookbor;
	}

	public void setWorklitebookbor(WorkliteBookBor worklitebookbor) {
		this.worklitebookbor = worklitebookbor;
	}

	public WorkliteBookDao getWorklite_bookdao() {
		return worklite_bookdao;
	}

	public void setWorklite_bookdao(WorkliteBookDao worklite_bookdao) {
		this.worklite_bookdao = worklite_bookdao;
	}

	public List<WorkliteBook> getWorklitebooks() {
		return worklitebooks;
	}

	public void setWorklitebooks(List<WorkliteBook> worklitebooks) {
		this.worklitebooks = worklitebooks;
	}

}