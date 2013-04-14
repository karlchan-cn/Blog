/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.service.impl.BaseDaoImpl;
import cn.com.kc.blog.dao.service.IBlogImageDaoService;
import cn.com.kc.blog.pojo.BlogImage;

/**
 * @author chenjinlong2
 * 
 */
@Repository(value = "cn.com.kc.blog.dao.service.IBlogImageDaoService")
public class BlogImageDaoImpl extends BaseDaoImpl<BlogImage, Long> implements
		IBlogImageDaoService {

}
