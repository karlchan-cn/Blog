/**
 * 
 */
package test.cn.com.kc.blog.service;

import junit.framework.Assert;

import org.junit.Test;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;

import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.controller.service.impl.BlogUserController;
import cn.com.kc.blog.pojo.BlogUser;
import cn.com.kc.blog.userdetialservice.impl.UserDetailServiceHibernateImpl;

/**
 * @author chenjinlong2
 * 
 */
public class BlogUserServiceTest extends BootTester {
private BlogUserController getController() {
	return (BlogUserController) context
					.getBean(BlogUserController.class.getName());
}

private UserDetailsService getUserDetailServiceImpl() {
	return (UserDetailsService) context
					.getBean(UserDetailServiceHibernateImpl.class.getName());
}

@Test
public void saveNewUser() {
	final BlogUser blogUser = new BlogUser();
	blogUser.setUserName("KarlChan");
	blogUser.setPassword("password");
	final BlogUserController blogUserController = getController();
	final BindingResult bindingResult = new BeanPropertyBindingResult(
					blogUser, "");
	blogUserController.saveUser(blogUser, bindingResult);
}

@Test
public void delUser() {
	final BlogUserController blogUserController = getController();
	final BlogUser blogUser = blogUserController.getUserService().getUser(21l);
	blogUserController.getUserService().delUser(blogUser);
}

@Test
public void testLoadUserByName() {
	UserDetailsService userDetailsService = getUserDetailServiceImpl();
	UserDetails user = userDetailsService.loadUserByUsername("");
	Assert.assertNotNull(user);
}
}
