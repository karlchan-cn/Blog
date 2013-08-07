/**
 * 
 */
package test.cn.com.kc.blog.service;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;

import com.alibaba.fastjson.JSON;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.controller.service.impl.BlogEntityController;
import cn.com.kc.blog.controller.service.impl.BlogUserController;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;
import cn.com.kc.blog.vo.BlogEntityVO;

/**
 * @author chenjinlong2
 * 
 */
public class BlogEntityServiceTest extends BootTester {
private BlogEntityController entityController;
private BlogUserController userController;
private IBlogEntityService entityService;
private IBlogUserService userService;

@Before
public void initialize() {
	entityService = (IBlogEntityService) context
					.getBean(IBlogEntityService.class.getName());
	entityController = (BlogEntityController) context.getBean(BlogEntityController.class.getName());
	userController = (BlogUserController) context.getBean(BlogUserController.class.getName());
	userService = (IBlogUserService) context.getBean(IBlogUserService.class.getName());
}

@Test
public void saveEntity() {
	final BlogUser blogUser = new BlogUser();
	blogUser.setId(1l);
	final IBlogEntityService blogEntityService = (IBlogEntityService) context
					.getBean(IBlogEntityService.class.getName());
	BlogEntity blogEntity = new BlogEntity();
	// Assert.assertNotNull(blogEntityService.saveEntity(blogUser, blogEntity));
}

@Test
public void testNullId() {
	Assert.assertNull(new BlogEntity().getId());
}

@Test
public void testQueryTempEntity() {
	try {
		final IBlogEntityService blogEntityService = (IBlogEntityService) context
						.getBean(IBlogEntityService.class.getName());
		final BlogEntityVO entity = blogEntityService.getTempEntity(null);
		Assert.assertNotNull(entity);
	} catch (Exception e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}

}

@Test
public void testSaveTempEntity() {
	BlogUser user = userService.getUser(1l);
	BlogEntity entity = new BlogEntity();
	 entityController.createTempEntity(user, entity);
	System.out.println(JSON.toJSONString(entity));
}
}
