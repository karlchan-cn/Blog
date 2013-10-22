/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.kc.blog.bl.service.IBlogImageService;

/**
 * @author karl
 * 
 */
@Controller(value = "cn.com.kc.blog.controller.service.impl.BlogImageController")
@RequestMapping("/imagemanage")
public class BlogImageController {

/**
	 * 
	 */
public BlogImageController() {
	// TODO Auto-generated constructor stub
}

@Resource(name = "cn.com.kc.blog.bl.service.IBlogImageService")
private IBlogImageService blogImageService;

public IBlogImageService getBlogImageService() {
	return blogImageService;
}

public void setBlogImageService(IBlogImageService blogImageService) {
	this.blogImageService = blogImageService;
}

@RequestMapping("/delimage")
@ResponseBody
public String delImage(
				@RequestParam("imageId") Long imageId
				) {
	getBlogImageService().delImage(imageId);
	System.out.println("out");
	return null;
}

}
