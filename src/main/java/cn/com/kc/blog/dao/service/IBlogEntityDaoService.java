/**
 * 
 */
package cn.com.kc.blog.dao.service;

import cn.com.kc.blog.commondao.service.IBaseDao;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public interface IBlogEntityDaoService extends IBaseDao<BlogEntity, Long> {
	/**
	 * Bean name;
	 */
	String BEAN_NAME = IBlogEntityDaoService.class.getName();

	void saveNewEntity(final BlogUser user, final BlogEntity entity);
}
