package com.dev.ch.common.vo;

public class PagingVO {
	private String no;
	private String page;
	private String pagePerCnt = "5";
	private String currentPage = "1";
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getPagePerCnt() {
		return pagePerCnt;
	}
	public void setPagePerCnt(String pagePerCnt) {
		this.pagePerCnt = pagePerCnt;
	}
	public String getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	
}
