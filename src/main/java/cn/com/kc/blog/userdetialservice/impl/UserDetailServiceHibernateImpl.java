/**
 * 
 */
package cn.com.kc.blog.userdetialservice.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.pojo.BlogAuthorities;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author kchen1
 * 
 */
public class UserDetailServiceHibernateImpl implements UserDetailsService {

/** Logger available to subclasses */
protected final Log logger = LogFactory.getLog(getClass());
/**
 * 
 */
private IBlogUserService userService;

public IBlogUserService getUserService() {
	return userService;
}

@Resource(name = "cn.com.kc.blog.bl.service.IBlogUserService")
public void setUserService(final IBlogUserService newUserService) {
	this.userService = newUserService;
}

/*
 * (non-Javadoc)
 * 
 * @see org.springframework.security.core.userdetails.UserDetailsService#
 * loadUserByUsername(java.lang.String)
 */
@Override
public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
	final BlogUser user = userService.getUserByUsername(username);
	final List<BlogAuthorities> authorities = user.getAuthorities();
	if (authorities.size() == 0) {
		throw new AuthenticationServiceException("该用户没有权限");
	}
	return null;
}

}
