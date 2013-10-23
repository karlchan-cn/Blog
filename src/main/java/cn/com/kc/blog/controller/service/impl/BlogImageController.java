/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.kc.blog.bl.service.IBlogImageService;
import cn.com.kc.blog.common.util.CommonControllerUtils;

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
public String delImage(HttpServletRequest request,
				@RequestParam("imageId") Long imageId,
				@RequestParam("imageName") String imageName
				) {
	// delete image file
	final String updatedFileLoc = CommonControllerUtils.getUploadDir(request);
	new File(updatedFileLoc + BlogImageControllerConst.CONST_STR_THUMB + imageName).delete();
	new File(updatedFileLoc + imageName).delete();
	// del database record;
	getBlogImageService().delImage(imageId);
	return null;
}

}
