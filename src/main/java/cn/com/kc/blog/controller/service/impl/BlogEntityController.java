/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.com.kc.blog.bl.service.IBlogEntityService;

/**
 * @author chenjinlong2
 * 
 */
@Controller(value = "cn.com.kc.blog.controller.service.impl.BlogEntityController")
@RequestMapping("/entity")
public class BlogEntityController {
	/**
		 * 
		 */
	private IBlogEntityService blogEntityService;

	/**
	 * 
	 * @return
	 */
	public IBlogEntityService getUserService() {
		return blogEntityService;
	}

	/**
	 * 
	 * @param newblogEntityService
	 */
	@Resource(name = "cn.com.kc.blog.bl.service.IBlogEntityService")
	public void setUserService(final IBlogEntityService newblogEntityService) {
		this.blogEntityService = newblogEntityService;
	}

	@RequestMapping("/create")
	public String createEntity() {
		return "entity";
	}

	@RequestMapping("/{entityId}/endit")
	public String enditEntity(@PathVariable final String entityId) {
		return "entity";
	}

	@RequestMapping("/{entityId}")
	public String showEntity(@PathVariable final String entityId) {
		return "entity";
	}
}
