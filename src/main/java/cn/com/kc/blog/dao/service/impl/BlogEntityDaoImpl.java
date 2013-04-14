/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
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

	public void saveNewEntity(final BlogUser user, final BlogEntity entity) {
		entity.setUser(user);
		this.save(entity);
	}

	@SuppressWarnings("unchecked")
	public List<BlogEntity> getTempEntity(final BlogUser user) {
		final Session session = getCurrentSession();
		final Query query = session
				.createQuery("from BlogEntity entity where entity.isTemp = true and entity.user = ?");
		query.setEntity(0, user);
		List<BlogEntity> list = query.list();
		return list;
	}
}
