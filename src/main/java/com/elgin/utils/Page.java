package com.elgin.utils;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * 分页对象. 包含当前页数据及分页信息如总记录数.
 */
@SuppressWarnings("serial")
public class Page  implements Serializable {

	private static int DEFAULT_PAGE_SIZE = 20;

	private int pageSize = DEFAULT_PAGE_SIZE; // 每页的记录数


	private int  totalCount; // 总记录数
	private int  currentPageNo=1;
	private int start;

	/**
	 * 构造方法，只构造空页.
	 */
	public Page() {
		this(0, 0, DEFAULT_PAGE_SIZE);
	}

	/**
	 * 默认构造方法.
	 * 
	 * @param currentPageNo
	 *           当前页码
	 * @param totalSize
	 *            数据库中总记录条数
	 * @param pageSize
	 *            本页容量
	 */
	public Page(int currentPageNo, int totalSize, int pageSize) {
		setParam(currentPageNo, totalSize, pageSize);
	}

	public void setParam(int currentPageNo, int totalSize, int pageSize) {
		this.pageSize = pageSize;
		this.currentPageNo = currentPageNo;
		this.totalCount = totalSize;
		this.start = (currentPageNo - 1) * pageSize;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	/**
	 * 取总记录数.
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	/**
	 * 取总页数.
	 */
	public int getTotalPageCount() {
		if (totalCount % pageSize == 0)
			return totalCount / pageSize;
		else
			return totalCount / pageSize + 1;
	}

	/**
	 * 取每页数据容量.
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 取该页当前页码,页码从1开始.
	 */
	public int getCurrentPageNo() {
		return this.currentPageNo;
	}

	/**
	 * 该页是否有下一页.
	 */
	public boolean hasNextPage() {
		return this.getCurrentPageNo() < this.getTotalPageCount() - 1;
	}

	/**
	 * 该页是否有上一页.
	 */
	public boolean hasPreviousPage() {
		return this.getCurrentPageNo() > 1;
	}
 
	public void setCurrentPageNo(int pageNo){
		this.currentPageNo = pageNo;
	}

	
}