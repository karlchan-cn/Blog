/**
 * 
 */
package test.cn.com.kc.blog.service;

import junit.framework.Assert;
import org.junit.Test;
import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public class BlogEntityServiceTest extends BootTester {
	@Test
	public void saveEntity() {
		final BlogUser blogUser = new BlogUser();
		blogUser.setId(1l);
		final IBlogEntityService blogEntityService = (IBlogEntityService) context
				.getBean(IBlogEntityService.class.getName());
		BlogEntity blogEntity = new BlogEntity();
		Assert.assertNotNull(blogEntityService.saveEntity(blogUser, blogEntity));
	}

	@Test
	public void testQueryTempEntity() {
		try {
			final IBlogEntityService blogEntityService = (IBlogEntityService) context
					.getBean(IBlogEntityService.class.getName());
			blogEntityService.getTempEntity(1l);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}

	}
}
