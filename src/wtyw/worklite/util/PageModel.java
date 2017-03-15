package wtyw.worklite.util;

import java.util.*;

/*
 * AUTHOR ��ף��
 * 2016.01.26
 */
public class PageModel {
	
	private int pageNo;
	private int pageSize;
	private int totalRecords;
	private List list;
	
	/**
	 * ��ȡ��ǰҳ
	 * @return
	 */
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	/**
	 * ��ȡÿҳ��ʾ��¼��
	 * @return
	 */
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * ��ȡ��ѯ�����
	 * @return
	 */
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	/**
	 * ��ȡ�ܼ�¼��
	 * @return
	 */
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	/**
	 * ��ȡ��ҳ��
	 * @return
	 */
	public int getTotalPages() {
		return (totalRecords+pageSize-1)/pageSize;
	}

	/**
	 * ȡ����ҳ
	 * @return
	 */
	public int getTopPageNo() {
		return 1;
	}

	/**
	 * ȡ����һҳ
	 * @return
	 */
	public int getPreviousPageNo() {
		if(pageNo<=1){
			return 1;
		}
		return pageNo-1;
	}

	/**
	 * ȡ����һҳ
	 * @return
	 */
	public int getNextPageNo() {
		if(pageNo>=getTotalPages()){
			return getTotalPages()==0?1:getTotalPages();
		}
		return pageNo+1;
	}

	/**
	 * ȡ�����һҳ
	 * @return
	 */
	public int getBottomPageNo() {
		return getTotalPages()==0?1:getTotalPages();
	}

}
