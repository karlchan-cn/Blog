/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.service.impl.BaseDaoImpl;
import cn.com.kc.blog.dao.service.IBlogEntityDaoService;
import cn.com.kc.blog.dao.service.IBlogUserDaoService;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Repository("cn.com.kc.blog.dao.service.IBlogEntityDaoService")
public class BlogEntityDaoImpl extends BaseDaoImpl<BlogEntity, Long> implements
		IBlogEntityDaoService {
	private IBlogUserDaoService userDao;

	@Resource(name = "cn.com.kc.blog.dao.service.IBlogUserDaoService")
	public void setUserDao(final IBlogUserDaoService newDao) {
		this.userDao = newDao;
	}

	@Override
	public void saveNewEntity(final BlogUser user, final BlogEntity entity) {
		entity.setUser(user);
		this.save(entity);
	}
}
