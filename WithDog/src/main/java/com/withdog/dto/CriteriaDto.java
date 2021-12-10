package com.withdog.dto;

public class CriteriaDto {

	private int page;		//선택 페이지 번호
	private int amount;		//해당 페이지 목록 갯수
	private int count;		//총 목록 갯수
	private int startNum;	//페이지 시작 번호
	private int lastNum;	//마지막 페이지 번호
	private boolean next;	//다음 페이지 버튼	(마지막 ..../끝 일때 false로)
	private boolean prev;	//이전 페이지 버튼 (첫 1/2/3/4/5 일때 false로)
	private int pageStart;	//게시글 시작 번호
	private int pageEnd;	//게시글 끝 번호
	private String field;	//검색어
	private String category;//검색분류
	private String order;	//정렬 기준
	
	public CriteriaDto() {
		
	}
	
	public CriteriaDto(int page, int amount, int count, String field, String category, String order) {
		this.page = page;
		this.amount = amount;
		this.count = count;
		this.field = field;
		this.category = category;
		this.order = order;
		this.startNum = page-(page-1)%5;
		this.lastNum = (int)Math.ceil((double)this.count/this.amount);
		this.prev = this.startNum == 1?false:true;
		this.next = this.lastNum <= (this.startNum+4)?false:true;
		this.pageStart = (this.page-1)*this.amount+1;
		this.pageEnd = this.page * this.amount;
	}

	public CriteriaDto(int page, int amount, int count, int startNum, int lastNum, boolean next, boolean prev, int pageStart, int pageEnd, String field, String category, String order) {
		this.page = page;
		this.amount = amount;
		this.count = count;
		this.startNum = startNum;
		this.lastNum = lastNum;
		this.next = next;
		this.prev = prev;
		this.pageStart = pageStart;
		this.pageEnd = pageEnd;
		this.field = field;
		this.category = category;
		this.order = order;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getLastNum() {
		return lastNum;
	}
	public void setLastNum(int lastNum) {
		this.lastNum = lastNum;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}
	
	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "CriteriaDto [page=" + page + ", amount=" + amount + ", count=" + count + ", startNum=" + startNum
				+ ", lastNum=" + lastNum + ", next=" + next + ", prev=" + prev + ", pageStart=" + pageStart
				+ ", pageEnd=" + pageEnd + ", field=" + field + ", category=" + category + ", order=" + order + "]";
	}
	
	
	
}
