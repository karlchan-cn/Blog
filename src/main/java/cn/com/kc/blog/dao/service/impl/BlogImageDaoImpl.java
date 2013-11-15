/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;
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

@Override
public String getBaseTotalQueryHQL() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public String getBasetoalListQueryHQL() {
	// TODO Auto-generated method stub
	return null;
}

}
