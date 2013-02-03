/**
 * 
 */
package cn.com.kc.blog.controller.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.kc.blog.bl.service.IBlogUserService;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Controller(value = "cn.com.kc.blog.controller.service.impl.BlogUserController")
@RequestMapping("/user")
public class BlogUserController {
	private IBlogUserService userService;

	public IBlogUserService getUserService() {
		System.out.println("");
		return userService;
	}

	@Resource(name = "cn.com.kc.blog.bl.service.IBlogUserService")
	public void setUserService(final IBlogUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/validate")
	@ResponseBody
	public String validateUser(
			@Validated @ModelAttribute("user") final BlogUser user,
			final BindingResult result) {
		return result.toString();
	}

	@RequestMapping(value = { "/login" })
	public String signin() {
		return "signin";
	}

	@RequestMapping(value = { "/register" })
	public String register() {
		return "register";
	}

	@RequestMapping(value = { "/adduser" })
	public void saveUser(
			@Validated @ModelAttribute("user") final BlogUser user,
			final BindingResult result) {
		if (result.getErrorCount() > 0) {
			return;
		}
		this.userService.saveUser(user);
	}
}
