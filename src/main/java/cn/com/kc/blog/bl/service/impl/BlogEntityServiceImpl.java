/**
 * 
 */
package cn.com.kc.blog.bl.service.impl;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.stereotype.Service;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.dao.service.IBlogEntityDaoService;
import cn.com.kc.blog.dao.service.IBlogUserDaoService;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;
import cn.com.kc.blog.vo.BlogEntityVO;

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

public Serializable saveEntity(final BlogUser user, final BlogEntityVO entity) {
	final BlogEntity entityPo = new BlogEntity();
	try {
		BeanUtils.copyProperties(entityPo, entity);
	} catch (IllegalAccessException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		throw new RuntimeException(e);
	} catch (InvocationTargetException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		throw new RuntimeException(e);
	}
	entityPo.setUser(user);
	BlogEntityVO retVal = new BlogEntityVO();
	entityDao.save(entityPo);
	try {
		BeanUtils.copyProperties(retVal, entityPo);
	} catch (Exception e) {
		throw new RuntimeException(e);
	}
	return entityPo;
}

/**
 * {@inheritDoc}
 */
public BlogEntityVO getTempEntity(BlogUser user) {
	final List<BlogEntity> list = this.entityDao.getTempEntity(user);
	BlogEntityVO retVal = new BlogEntityVO();
	if (list.size() != 0) {
		try {
			BeanUtils.copyProperties(retVal, list.get(0));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	return retVal;
}
}
