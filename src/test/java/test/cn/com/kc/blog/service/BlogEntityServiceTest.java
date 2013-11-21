/**
 * 
 */
package test.cn.com.kc.blog.service;

import java.util.Iterator;
import java.util.List;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;

import com.alibaba.fastjson.JSON;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.commondao.pagination.impl.PageRequestImpl;
import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.controller.service.impl.BlogEntityController;
import cn.com.kc.blog.controller.service.impl.BlogUserController;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

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
		// final BlogEntityVO entity = blogEntityService.getTempEntity(null);
		// Assert.assertNotNull(entity);
	} catch (Exception e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}

}

@Test
public void testSaveTempEntity() {
	BlogUser user = userService.getUser(1l);
	BlogEntity entity = new BlogEntity();
	// entityController.createTempEntity(user, entity);
	System.out.println(JSON.toJSONString(entity));
}

@Test
public void testInsertEntityListData() {
	final String username = "admin";
	final BlogUser adminUser = userController.getBlogUserByName(username);
	BlogEntity entity = null;
	final String content = "Congratulations on starting your free trial of AppDynamics!"
							+
							"There are 12 days left in your free trial of AppDynamics Pro. We want you to get as much value as you can out of the product during your free trial, so here a few links to get you started:"
							+
							"1.	AppSphere, our user community, is a great resource for getting help with AppDynamics and talking to other people using the product."
							+
							"2.	Your Subscriptions page is your one-stop-shop for all your account information, including your vanity URL for your SaaS Controller (if applicable) and download links for the Controller and agents.";
	for (int i = 0; i < 50; i++) {
		entity = new BlogEntity();
		entity.setTitle("Test Entity " + i);
		entity.setContent(content
						);
		entityController.createTempEntity(adminUser, entity);
	}

}

@Test
public void testGetPagingEntities() {
	PageRequestImpl pageRequest = new PageRequestImpl(3, 50);
	Page<BlogEntity> page = entityService.getBasePagedEntityDataByParam(pageRequest);
	List<BlogEntity> content = page.getContent();
	for (Iterator<BlogEntity> iterator = content.iterator(); iterator.hasNext();) {
		BlogEntity blogEntity = iterator.next();
		System.out.println(blogEntity.getTitle());
	}
}
}
