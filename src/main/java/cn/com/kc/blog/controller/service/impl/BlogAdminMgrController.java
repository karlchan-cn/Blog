/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author karl
 * 
 */
@Controller(value = "cn.com.kc.blog.controller.service.impl.BlogAdminMgrController")
@RequestMapping("/admin")
public class BlogAdminMgrController {
	final public static String ADMININDEX = "adminIndex";

	@RequestMapping("/index")
	public ModelAndView adminIndex() {
		final ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(ADMININDEX);
		return modelAndView;
	}
}
