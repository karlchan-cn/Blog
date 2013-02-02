/**
 * 
 */
package test.cn.com.kc.blog.service;

import org.junit.Test;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.controller.service.impl.BlogUserController;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public class BlogUserServiceTest extends BootTester {
	@Test
	public void saveNewUser() {
		final BlogUser blogUser = new BlogUser();
		final BlogUserController blogUserController = (BlogUserController) context
				.getBean(BlogUserController.class.getName());
		final BindingResult bindingResult = new BeanPropertyBindingResult(
				blogUser, "");
		blogUserController.saveUser(blogUser, bindingResult);
	}

	@Test
	public void delUser() {
		final IBlogUserService blogUserService = (IBlogUserService) context
				.getBean(IBlogUserService.class.getName());
		final BlogUser blogUser = blogUserService.getUser(21l);
		blogUserService.delUser(blogUser);
	}

}
