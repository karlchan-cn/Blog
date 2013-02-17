/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.common.util.CommonControllerUtils;
import cn.com.kc.blog.pojo.BlogImage;

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
	public static final String CONST_ENTITY_PAGE = "entity";
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
	 */
	private static String UPLOAD_DIR = null;

	/**
	 * 
	 * @param request
	 * @return
	 */
	public static String getUploadDir(final HttpServletRequest request) {
		if (UPLOAD_DIR == null) {
			UPLOAD_DIR = request.getSession().getServletContext()
					.getRealPath("/")
					+ "/WEB-INF/upload/images/";
			// 初始化下载目录
			File uploadDir = new File(UPLOAD_DIR);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}
		}
		return UPLOAD_DIR;
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
		return CONST_ENTITY_PAGE;
	}

	@RequestMapping("/{entityId}/endit")
	public String enditEntity(@PathVariable final String entityId) {
		return CONST_ENTITY_PAGE;
	}

	@RequestMapping("/{entityId}")
	public String showEntity(@PathVariable final String entityId) {
		return CONST_ENTITY_PAGE;
	}

	@RequestMapping("/savefile")
	@ResponseBody
	@SuppressWarnings("unchecked")
	public List<BlogImage> saveFile() {
		final BlogImage blogImage = new BlogImage();
		List<BlogImage> imageList = new ArrayList<BlogImage>();
		imageList.add(blogImage);
		final HttpServletRequest request = CommonControllerUtils.getRequest();
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List<FileItem> items = null;
		try {
			items = upload.parseRequest(request);
			Iterator<FileItem> iterator = items.iterator();
			FileItem item = null;
			final String uploadDir = getUploadDir(request);
			while (iterator.hasNext()) {
				item = iterator.next();

				if (!item.isFormField()) {
					// File file = new File(uploadDir
					// + String.valueOf(System.currentTimeMillis())
					// + ".JPG");
					// item.write(file);
					blogImage.setSize(item.getSize());
				} else {
					try {
						PropertyUtils.setProperty(blogImage,
								item.getFieldName(),
								Long.valueOf(item.getString()));
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return imageList;
	}

	@RequestMapping("/saveimage")
	@ResponseBody
	@SuppressWarnings("unchecked")
	public BlogImage saveImage() {
		final BlogImage blogImage = new BlogImage();
		return blogImage;
	}
}
