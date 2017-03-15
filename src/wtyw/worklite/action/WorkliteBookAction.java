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
				"�������ϼܣ���л��ϸ����΢�Ĺ���!");
		return "addsuccess";
	}

	public String queryBookDetail() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!worklitebook.equals(null)) {
			return "queryDetail_success";
		} else
			return "fail";
	}

	// ͼ��ά��֮ǰ���ͼ��״̬��������ǿɽ���״̬���򾯸档
	public String updateBookDetail() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (worklitebook.getBook_status() != null
				&& worklitebook.getBook_status().equals("�ɽ���")) {
			return "queryDetail_success";
		} else {
			ServletActionContext.getRequest().setAttribute("message",
					"ͼ���Ѿ������Ļ��߱�ע����������ά����Ϣ����ѡ����������!");
			return "fail";
		}
	}

	//
	public String updateBook() {
		String result = bookService.updateWorklitebook(worklitebook);
		return result;
	}

	// ����ͼ��
	public String useQuery() {
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!((worklitebook.getBook_status().equals("�ɽ���")))) {
			ServletActionContext.getRequest().setAttribute("message",
					"ͼ���ѽ����ע��������ѡ������ͼ�飬лл!");
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
				"���ѳɹ�����ͼ�飬�밮ϧͼ�鲢��ʱ�黹���������˽��ģ�лл");
		return result;
	}

	// �黹����֮ǰ�������״̬����Ϊ�ѽ��ģ��򾯸档
	public String backQuery() {
		String result = "fail";
		String message = "";
		worklitebook = bookService.queryWorklitebook(worklitebook.getBook_id());
		if (!bookService.querybookstatus(worklitebook.getBook_id()).equals(
				"success")) {
			message = "ͼ��״̬δ��������ɹ黹��лл";
		} else {
			worklitebookbor = bookService.queryWorkliteBookLend(worklitebook
					.getBook_id());
			if (worklitebookbor != null) {
				result = "backQuery_success";
				return result;
			} else
				message = "ͼ��״̬Ϊ�ѽ��ģ����黹ʧ�ܣ�����ϵ������Ա��лл";

		}
		ServletActionContext.getRequest().setAttribute("message", message);
		return result;
	}
	//�黹ͼ��
	public String backBook() throws Exception {
		String result = "";
		result = bookService.backBook(worklitebookbor);
		if (result.equals("return_success")) {
			ServletActionContext.getRequest().setAttribute("message","ͼ���Ѿ��黹��лл��");
			return result;
		} else {
			ServletActionContext.getRequest().setAttribute("message","ͼ��黹ʧ�ܣ�����ϵ������Ա��лл��");
			return result;
		}
	}

	public String annulBook() {
		String result = bookService
				.annulworklitebook(worklitebook.getBook_id());
		if (result.equals("have_lend")) {
			ServletActionContext.getRequest().setAttribute("message",
					"�����ѱ����ģ�����ע��!");
			return "annul_result";
		} else if (result.equals("have_annul")) {
			ServletActionContext.getRequest().setAttribute("message",
					"�����ѱ�ע���������ظ�ע��!");
			return "annul_result";
		} else {
			ServletActionContext.getRequest().setAttribute("message",
					"������ע����лл!");
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