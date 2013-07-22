/**
 * 
 */
package cn.com.kc.blog.bl.service.impl;

import java.sql.Timestamp;
import java.util.Calendar;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;
import javax.persistence.Inheritance;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
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
	/**
	 * use spring md5password encoder to encode password with the salt username.
	 */
	user.setPassword(new Md5PasswordEncoder().encodePassword(user.getPassword(), user.getUserName()));
	user.setEnabled(true);
	user.setCreateTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
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
