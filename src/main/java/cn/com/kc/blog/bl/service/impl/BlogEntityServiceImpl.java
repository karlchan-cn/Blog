/**
 * 
 */
package cn.com.kc.blog.bl.service.impl;

import java.io.Serializable;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;
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

public Serializable saveEntity(final BlogUser user, final BlogEntity entity) {
	entity.setUser(user);
	entityDao.save(entity);
	return entity;
}

/**
 * {@inheritDoc}
 */
public BlogEntity getTempEntity(BlogUser user) {
	final List<BlogEntity> list = this.entityDao.getTempEntity(user);
	BlogEntity entity;
	if (list.size() != 0) {
		entity = list.get(0);
	} else {
		entity = new BlogEntity();
	}
	return entity;
}

@Override
public void updateEntity(BlogEntity entity, BlogUser user) {
	entity.setUser(user);
	entityDao.update(entity);
}

@Override
public void publishEntity(final BlogEntity entity) {
	entityDao.updateEntityByHQL(entity);
}

@Override
public BlogEntity getEntityById(final Long entityId) {
	return entityDao.get(entityId);
}

@Override
public boolean delEntity(BlogEntity blogEntity) {
	entityDao.delete(blogEntity);
	return true;
}

@Override
public Page<BlogEntity> getBasePagedEntityDataByParam(PageRequest pageRequest, Object... parameters) {

	return entityDao.getBasePagedEntityData(pageRequest, parameters);
}
}
