/**
 * 
 */
package cn.com.kc.blog.bl.service.impl;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.dao.service.IBlogEntityDaoService;
import cn.com.kc.blog.dao.service.IBlogUserDaoService;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Service("cn.com.kc.blog.bl.service.IBlogEntityService")
public class BlogEntityServiceImpl implements IBlogEntityService {
	/**
	 * 
	 */
	private IBlogEntityDaoService entityDao;
	/**
	 * 
	 */
	private IBlogUserDaoService userDao;

	@Resource(name = "cn.com.kc.blog.dao.service.IBlogUserDaoService")
	public void setUserDao(IBlogUserDaoService userDao) {
		this.userDao = userDao;
	}

	@Resource(name = "cn.com.kc.blog.dao.service.IBlogEntityDaoService")
	public void setEntityDao(final IBlogEntityDaoService newDAO) {
		this.entityDao = newDAO;
	}

	/**
	 * 
	 * @param entity
	 */
	public Serializable saveEntity(final BlogUser user, final BlogEntity entity) {
		// BlogUser user2 = this.userDao.get(user.getId());
		entity.setUser(user);
		return entityDao.save(entity);
	}
}
