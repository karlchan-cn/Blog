/**
 * 
 */
package cn.com.kc.blog.common.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpHeaders;
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

/**
 * return the specified ContentType SpringFramework HttpHenaders according to
 * the param contentType
 * 
 * @param contentType
 *            content Type
 * @return HttpHeaders
 */
public static HttpHeaders getHttpHeadersByType(final String contentType) {
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.set("Content-Type", contentType);
	responseHeaders.set("charset", "UTF-8");
	responseHeaders.set("Cache-Control", "no-store");
	responseHeaders.set("Pragma", "no-store");
	responseHeaders.set("Expires", "0");
	return responseHeaders;
}
}
