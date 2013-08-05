/**
 * 
 */
package cn.com.kc.blog.common.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
public class CommonUtils {
/**
 * private constructor.
 */
private CommonUtils() {

}

private static final Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();

/**
 * get Md5PasswordEncoder
 * 
 * @return
 */
public static Md5PasswordEncoder getMd5PasswordEncoder() {
	return md5PasswordEncoder;
}

/**
 * encode password with the specified salt.
 * 
 * @param rawPassword
 *            raw password
 * @param salt
 *            salt
 * @return encoded password
 */
public static String ecodePasswordBySalt(final String rawPassword, final Object salt) {
	return md5PasswordEncoder.encodePassword(rawPassword, salt);
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

/**
 * get current user. if
 * 
 * @return
 */
public static BlogUser getCurrentUser() {
	BlogUser user = null;
	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	if (principal instanceof UserDetails) {
		String username = ((UserDetails) principal).getUsername();
	} else {
		String username = principal.toString();
	}
	return user;
}
}
