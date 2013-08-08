/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import java.io.File;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import cn.com.kc.blog.bl.service.IBlogEntityService;
import cn.com.kc.blog.bl.service.IBlogImageService;
import cn.com.kc.blog.common.util.CommonUtils;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogEntityConst;
import cn.com.kc.blog.pojo.BlogImage;
import cn.com.kc.blog.pojo.BlogUser;
import cn.com.kc.blog.userauthenfilter.impl.CustomedAuthenticateConst;
import cn.com.kc.blog.vo.BlogEntityVO;

/**
 * @author chenjinlong2
 * 
 */
@Controller(value = "cn.com.kc.blog.controller.service.impl.BlogEntityController")
@RequestMapping("/entity")
public class BlogEntityController {
/**
 * get user infor if login successfully
 * 
 * @return
 */
private BlogUser getCurrentLoginSuccessUser() {
	BlogUser user = (BlogUser) CommonUtils.getRequest().getSession()
					.getAttribute(CustomedAuthenticateConst.CONST_BLOG_USER_ATTRIBUTE);
	if (user == null) {
		throw new RuntimeException("请登录。");
	}
	return user;
}

/**
 * tet commite
 */
public static final String CONST_ENTITY_PAGE = "entity";
public static final String CONST_IMAGES_COUNT = "image-count";
public static final String CONST_IMAGES_SIZE = "image-size";
public static final String CONST_RET_ERROR = "error";
public static final String CONST_RET_ERROR_MSG = "error-msg";
public static final String CONST_RET_IMGLIST = "imagelist";
public static final String CONST_ERRORMSG_OULCOUNT = "一次只允许上传20张图片。";
public static final String CONST_ERRORMSG_OULSIZE = "一次只允许上传5Mb图片。";
public static final String CONST_UL_ACTION_INIT = "init";
public static final String CONST_UL_ACTION_CLEAR = "clear";
public static final BigDecimal CONST_MAX_UPLOAD_SIZE = new BigDecimal(
				1024 * 1024 * 5);

/**
 * json mapper
 */
private static final ObjectMapper mapper = new ObjectMapper();
/**
		 * 
		 */
@Resource(name = "cn.com.kc.blog.bl.service.IBlogEntityService")
private IBlogEntityService blogEntityService;
@Resource(name = "cn.com.kc.blog.bl.service.IBlogImageService")
private IBlogImageService blogImageDaoService;

public IBlogImageService getBlogImageDaoService() {
	return blogImageDaoService;
}

public void setBlogImageDaoService(IBlogImageService blogImageDaoService) {
	this.blogImageDaoService = blogImageDaoService;
}

/**
 * 
 * @return
 */
public IBlogEntityService getBlogEntityService() {
	return blogEntityService;
}

/**
 * 
 * @param blogEntityService
 */
public void setBlogEntityService(final IBlogEntityService blogEntityService) {
	this.blogEntityService = blogEntityService;
}

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
public ModelAndView createEntity() {
	// load the temperay
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.setViewName(CONST_ENTITY_PAGE);
	final BlogUser user = getCurrentLoginSuccessUser();
	BlogEntity entity = blogEntityService.getTempEntity(user);
	if (entity.getId() == null) {
		entity = createTempEntity(user, entity);
	}
	modelAndView.getModelMap().put("entity", entity);
	BlogEntity entityJson = new BlogEntity();
	entityJson.setId(entity.getId());
	entityJson.setTitle(entity.getTitle());
	entityJson.setContent(entity.getContent());
	entityJson.setReadprivate(entity.getReadprivate());
	entityJson.setCommentable(entity.getCommentable());
	modelAndView.getModelMap().put("entityjson", JSON.toJSONString(entityJson));
	return modelAndView;
}

/**
 * 
 * @param user
 * @param entity
 */
public BlogEntity createTempEntity(final BlogUser user, final BlogEntity entity) {
	entity.setIsTemp(true);
	entity.setCreatedate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
	entity.setCommentable(true);
	entity.setReadprivate(BlogEntityConst.CONSTR_READ_PRATE_ALL);
	return (BlogEntity) blogEntityService.saveEntity(user, entity);
}

@RequestMapping("/endit/{entityId}")
public String enditEntity(@PathVariable final String entityId) {
	return CONST_ENTITY_PAGE;
}

/**
 * 获取当前上传数量-get current uploaded image count / upload window.
 * 
 * @param session
 *            session对象.
 * @return 数量-count
 */
private Integer getCurrentUploadedCount(HttpSession session) {
	// 初始化获取当前上传文件总数量
	Integer imageCount = (Integer) session.getAttribute(CONST_IMAGES_COUNT);
	if (imageCount == null) {
		imageCount = 0;
	}
	return imageCount;
}

@RequestMapping("/savefile")
@ResponseBody
@SuppressWarnings("unchecked")
public ResponseEntity<String> saveFile(HttpServletRequest request,
				HttpServletResponse response, HttpSession httpSession) {

	JsonFactory jsonFactory = new JsonFactory();
	// 初始化获取当前上传文件总数量
	Integer uploadedCount = getCurrentUploadedCount(httpSession);
	final Map<String, Object> retVal = new HashMap<String, Object>();
	final BlogImage blogImage = new BlogImage();
	List<BlogImage> imageList = new ArrayList<BlogImage>();
	imageList.add(blogImage);
	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List<FileItem> items = null;
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.set("Content-Type", "text/plain");
	responseHeaders.set("charset", "UTF-8");
	// if over 20 images upload, return false-如果上传超过20张,直接返回false.
	if (uploadedCount >= 20) {
		retVal.put(CONST_RET_ERROR, Boolean.TRUE);
		retVal.put(CONST_RET_ERROR_MSG, CONST_ERRORMSG_OULCOUNT);
	} else {
		try {
			// 增加文件数量
			uploadedCount++;
			items = upload.parseRequest(request);
			Iterator<FileItem> iterator = items.iterator();
			FileItem item = null;
			final String uploadDir = getUploadDir(request);
			while (iterator.hasNext()) {
				item = iterator.next();
				if (!item.isFormField()) {
					// to-do 判断文件时图片文件 该次上传的文件数量不超过 20张, 判断该次上传文件长度不超过5mb
					// 判断文件大小是否超过最大上限
					if (CONST_MAX_UPLOAD_SIZE.subtract(
									BigDecimal.valueOf(item.getSize())).longValue() < 0L) {
						retVal.put(CONST_RET_ERROR, Boolean.TRUE);
						retVal.put(CONST_RET_ERROR_MSG,
										CONST_ERRORMSG_OULSIZE);
						break;
					}
					String fileName = String.valueOf(System
									.currentTimeMillis()) + item.getName();
					File file = new File(uploadDir + fileName);
					blogImage.setName(fileName);
					blogImage.setShowName(item.getName());
					blogImage.setSize(item.getSize());
					item.write(file);

				} else if ("tempid".equals(item.getFieldName())) {
					blogImage.setTempid(Long.valueOf(item.getString()));
				} else if ("entity".equals(item.getFieldName())) {
					JsonParser jp = jsonFactory.createJsonParser(item
									.getString());
					blogImage.setEntity(mapper.readValue(jp,
									BlogEntity.class));
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	blogImageDaoService.saveImage(blogImage);
	// 用此类构造字符串
	StringWriter w = new StringWriter();
	retVal.put(CONST_RET_IMGLIST, imageList);
	try {
		mapper.writeValue(w, retVal);
	} catch (Exception e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}
	ResponseEntity<String> responseEntity = new ResponseEntity<String>(
					w.toString(), responseHeaders, HttpStatus.CREATED);
	return responseEntity;
}

/**
 * 弹出上传窗口时初始化本次上传数量Session信息
 * 
 * @param action
 * @param request
 * @param httpSession
 */
@RequestMapping("/inituploadinfo")
@ResponseBody
public void initUploadinfo(@ModelAttribute("action") final String action,
				final HttpServletRequest request, final HttpSession httpSession) {
	httpSession.setAttribute(CONST_IMAGES_COUNT, 0);
}

@RequestMapping("/delentity")
@ResponseBody
public String delEntityImage(@ModelAttribute("imageId") final Long imageId) {
	return null;
}

/**
 * 
 * @return
 */

@RequestMapping("/saveentity")
@ResponseBody
public BlogEntity saveEntity(@ModelAttribute("entity") final String entity,
				HttpServletRequest request, HttpServletResponse response) {
	BlogEntity retVal = null;
	try {
		retVal = mapper.readValue(entity, BlogEntity.class);
	} catch (Exception e) {

		e.printStackTrace();
		throw new RuntimeException(e);
	}
	final BlogUser user = new BlogUser();

	retVal.setCreatedate(new Timestamp(Calendar.getInstance()
					.getTimeInMillis()));
	user.setId(1L);
	getBlogEntityService().saveEntity(user, retVal);
	return null;
}

public BlogEntity initEditEntity() {
	return null;
}

@RequestMapping("/saveimage")
@ResponseBody
public BlogImage saveImage() {
	final BlogImage blogImage = new BlogImage();
	return blogImage;
}

/**
 * 
 * @param entityid
 * @return
 */
@RequestMapping("/")
public ModelAndView newEntity(
				@ModelAttribute("entityid") final String entityid) {
	BlogEntity model = null;
	if (entityid == null) {
		model = blogEntityService.getTempEntity(null);
	}
	ModelAndView retVal = new ModelAndView();
	retVal.setViewName(CONST_ENTITY_PAGE);
	retVal.getModelMap().put("entity", model);
	return retVal;
}
}
// to do 保存图片,删除图片,控制上传窗口的状态.