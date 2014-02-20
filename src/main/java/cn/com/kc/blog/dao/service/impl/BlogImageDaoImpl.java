/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;
import cn.com.kc.blog.commondao.service.impl.BaseDaoImpl;
import cn.com.kc.blog.dao.service.IBlogImageDaoService;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogImage;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Repository(value = "cn.com.kc.blog.dao.service.IBlogImageDaoService")
public class BlogImageDaoImpl extends BaseDaoImpl<BlogImage, Long> implements
				IBlogImageDaoService {

public static final String CONST_HQL_GET_ALL_IMAGE_COUNT = " select count(image.id) from BlogImage image";
public static final String CONST_HQL_GET_LISTEDIMAGE_INFO = " select image.id,image.name,image.position,image.createDate,image.showName,image.description,image.state,image.replacement "
															+ " from BlogImage image";

@Override
public String getBaseTotalQueryHQL() {

	return CONST_HQL_GET_ALL_IMAGE_COUNT;
}

@Override
public String getBasetoalListQueryHQL() {

	return CONST_HQL_GET_LISTEDIMAGE_INFO;
}

@Override
public Page<BlogImage> getPaginatedImagesData(PageRequest pageRequest, Object... parameters) {
	final Page<BlogImage> page = super.getBasePagedEntityData(pageRequest,
					parameters);
	final List<?> content = page.getContent();
	List<BlogImage> entitiesList = new ArrayList<BlogImage>();
	BlogImage image = null;
	for (Iterator<?> iterator = content.iterator(); iterator.hasNext();) {
		Object[] value = (Object[]) iterator.next();
		image = new BlogImage();
		image.setId((Long) value[0]);
		image.setName((String) value[1]);
		image.setPosition((String) value[2]);
		image.setCreateDate((Timestamp) value[3]);
		image.setShowName((String) value[4]);
		image.setDescription((String) value[5]);
		image.setState((String) value[6]);
		image.setReplacement((String) value[7]);
		entitiesList.add(image);
	}
	page.setContent(entitiesList);
	return page;
}

}
