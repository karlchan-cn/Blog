/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.service.impl.BaseDaoImpl;

import cn.com.kc.blog.dao.service.IBlogUserDaoService;

import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Repository("cn.com.kc.blog.dao.service.IBlogUserDaoService")
public class BlogUserDaoImpl extends BaseDaoImpl<BlogUser, Long> implements
				IBlogUserDaoService {

public static final String CONST_HQL_QUERY_USER_BY_USERNAME = "from BlogUser user where user.userName = ?";

@Override
public BlogUser getUserByUsername(String username) {
	final Session session = getCurrentSession();
	final Query query = session.createQuery(CONST_HQL_QUERY_USER_BY_USERNAME);
	query.setString(0, username);
	return (BlogUser) query.uniqueResult();
}

}
