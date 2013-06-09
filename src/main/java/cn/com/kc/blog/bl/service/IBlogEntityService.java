/**
 * 
 */
package cn.com.kc.blog.bl.service;

import java.io.Serializable;

import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public interface IBlogEntityService {
	/**
	 * Bean name;
	 */
	String BEAN_NAME = IBlogEntityService.class.getName();

	/**
	 * 保存用户.
	 * 
	 * @param user
	 *            用户.
	 * @param entity
	 *            日志
	 * @return entity to be saved
	 */
	Serializable saveEntity(final BlogUser user, final BlogEntity entity);

	BlogEntity getTempEntity(final Long userId);
}