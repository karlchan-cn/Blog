/**
 * 
 */
package cn.com.kc.blog.bl.service;

import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public interface IBlogUserService {
	/**
	 * Bean name;
	 */
	String BEAN_NAME = IBlogUserService.class.getName();

	/**
	 * save user
	 * 
	 * @param user
	 *            user to be saved;
	 */
	void saveUser(final BlogUser user);

	/**
	 * 
	 * @param id
	 * @return
	 */
	BlogUser getUser(final Long id);

	/**
	 * 
	 * @param user
	 */
	void delUser(final BlogUser user);

}
