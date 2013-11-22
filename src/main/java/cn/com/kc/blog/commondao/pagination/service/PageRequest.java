package cn.com.kc.blog.commondao.pagination.service;

/**
 * paging request object
 * 
 * @author kchen1
 * 
 */
public interface PageRequest {
	/**
	 * default page size.
	 */
	public static final Integer DEFAULT_PAGESIZE = 10;
	/**
	 * default page number;
	 */
	public static final Integer DEFAULT_PAGENUMBER = 1;

	/**
	 * query page number
	 * 
	 * @return
	 */
	Integer getPageNumber();

	/**
	 * query page size.
	 * 
	 * @return
	 */
	Integer getPageSize();
}
