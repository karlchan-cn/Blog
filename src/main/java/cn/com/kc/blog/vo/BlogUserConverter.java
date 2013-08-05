/**
 * 
 */
package cn.com.kc.blog.vo;

import java.util.List;
import java.util.Set;

import cn.com.kc.blog.pojo.BlogAuthorities;
import cn.com.kc.blog.pojo.BlogComments;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author kchen1
 * 
 */
public class BlogUserConverter implements ConverterService<BlogUser, BlogUserVO> {

@Override
public void convertPoToVo(BlogUser po, BlogUserVO vo) {
	vo.setId(po.getId());
	vo.setAddress(po.getAddress());
	vo.setCreateTime(po.getCreateTime());
	vo.setEmail(po.getEmail());
	vo.setEnabled(po.getEnabled());
	vo.setPassword(po.getPassword());
	vo.setPhoneNumber(po.getPhoneNumber());
	vo.setShowName(po.getShowName());
	vo.setUserName(po.getUserName());
	vo.setValidateCode(po.getValidateCode());
	Set<BlogComments> comments = po.getComments();
	Set<BlogEntity> entities = po.getEntities();
	List<BlogAuthorities> authorities = po.getAuthorities();
}

@Override
public void convertVoToPo(BlogUser po, BlogUserVO vo) {
	// TODO Auto-generated method stub

}

}
