package cn.com.kc.blog.commondao.pagination.service;

/**
 * paging request object
 * 
 * @author kchen1
 * 
 */
public interface PageRequest {
/**
 * query page number
 * 
 * @return
 */
int getPageNumber();

/**
 * query page size.
 * 
 * @return
 */
int getPageSize();
}
