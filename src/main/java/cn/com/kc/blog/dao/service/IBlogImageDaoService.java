/**
 * 
 */
package cn.com.kc.blog.dao.service;

import cn.com.kc.blog.commondao.service.IBaseDao;
import cn.com.kc.blog.pojo.BlogImage;

/**
 * @author chenjinlong2
 * 
 */
public interface IBlogImageDaoService extends IBaseDao<BlogImage, Long> {
	/**
	 * Bean name;
	 */
	String BEAN_NAME = IBlogImageDaoService.class.getName();
	
}
