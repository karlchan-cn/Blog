/**
 * 
 */
package cn.com.kc.blog.common.util;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * @author chenjinlong2
 * 
 */
public class CommonControllerUtils {
	/**
	 * private constructor.
	 */
	private CommonControllerUtils() {

	}

	/**
	 * 获取request.
	 * 
	 * @return HttpServletRequest.
	 */
	public static HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
	}
}
