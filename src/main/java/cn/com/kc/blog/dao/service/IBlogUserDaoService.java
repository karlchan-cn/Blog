/**
 * 
 */
package cn.com.kc.blog.dao.service;

import cn.com.kc.blog.commondao.service.IBaseDao;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public interface IBlogUserDaoService extends IBaseDao<BlogUser, Long> {
	/**
	 * Bean name;
	 */
	String BEAN_NAME = IBlogUserDaoService.class.getName();

}
