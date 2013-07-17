/**
 * 
 */
package cn.com.kc.blog.bl.service.impl;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;
import javax.persistence.Inheritance;

import org.springframework.stereotype.Service;

import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.dao.service.IBlogUserDaoService;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Service("cn.com.kc.blog.bl.service.IBlogUserService")
public class BlogUserServiceImpl implements IBlogUserService {
private IBlogUserDaoService userDao;

@Resource(name = "cn.com.kc.blog.dao.service.IBlogUserDaoService")
public void setUserDao(final IBlogUserDaoService newUserDao) {
	this.userDao = newUserDao;
}

/**
 * {@inheritDoc}
 */
public void saveUser(final BlogUser user) {
	this.userDao.save(user);
}

/**
 * 
 * @param id
 * @return
 */
public BlogUser getUser(final Long id) {
	return this.userDao.get(id);
}

/**
 * 
 * @param user
 */
public void delUser(final BlogUser user) {
	this.userDao.delete(user);
}

/**
 * {@inheritDoc}
 */
public BlogUser getUserByUsername(String username) {
	return userDao.getUserByUsername(username);
}
}
