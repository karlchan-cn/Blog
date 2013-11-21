package cn.com.kc.blog.commondao.pagination.impl;

import cn.com.kc.blog.commondao.pagination.service.PageRequest;

public class PageRequestImpl implements PageRequest {
	/**
	 * constructor.
	 * 
	 * @param pageNumber
	 *            number of pages to request
	 * @param pageSize
	 *            number of entity to show / page
	 */
	public PageRequestImpl(final int pageNumber, final int pageSize) {
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
	}

	/**
	 * page number requested
	 */
	private Integer pageNumber;
	/**
	 * page size requested
	 */
	private Integer pageSize;

	@Override
	public Integer getPageNumber() {
		return pageNumber;
	}

	@Override
	public Integer getPageSize() {
		// TODO Auto-generated method stub
		return pageSize;
	}

	/**
	 * get requested page number
	 * 
	 * @param pageNumber
	 *            page number
	 */
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	/**
	 * get requested page size
	 * 
	 * @param pageSize
	 *            page size
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

}
