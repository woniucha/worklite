package wtyw.worklite.util;

import java.util.*;

/*
 * AUTHOR 陈祝军
 * 2016.01.26
 */
public class PageModel {
	
	private int pageNo;
	private int pageSize;
	private int totalRecords;
	private List list;
	
	/**
	 * 获取当前页
	 * @return
	 */
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	/**
	 * 获取每页显示记录数
	 * @return
	 */
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 获取查询结果集
	 * @return
	 */
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	/**
	 * 获取总记录数
	 * @return
	 */
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	/**
	 * 获取总页数
	 * @return
	 */
	public int getTotalPages() {
		return (totalRecords+pageSize-1)/pageSize;
	}

	/**
	 * 取得首页
	 * @return
	 */
	public int getTopPageNo() {
		return 1;
	}

	/**
	 * 取得上一页
	 * @return
	 */
	public int getPreviousPageNo() {
		if(pageNo<=1){
			return 1;
		}
		return pageNo-1;
	}

	/**
	 * 取得下一页
	 * @return
	 */
	public int getNextPageNo() {
		if(pageNo>=getTotalPages()){
			return getTotalPages()==0?1:getTotalPages();
		}
		return pageNo+1;
	}

	/**
	 * 取得最后一页
	 * @return
	 */
	public int getBottomPageNo() {
		return getTotalPages()==0?1:getTotalPages();
	}

}
