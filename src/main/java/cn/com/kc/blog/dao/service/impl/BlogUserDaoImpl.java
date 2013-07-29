/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.com.kc.blog.commondao.service.impl.BaseDaoImpl;
import cn.com.kc.blog.dao.service.IBlogUserDaoService;
import cn.com.kc.blog.pojo.BlogUser;

/**
 * @author chenjinlong2
 * 
 */
@Repository("cn.com.kc.blog.dao.service.IBlogUserDaoService")
public class BlogUserDaoImpl extends BaseDaoImpl<BlogUser, Long> implements
				IBlogUserDaoService {

public static final String CONST_HQL_QUERY_USER_BY_USERNAME = "from BlogUser user where user.userName = ?";
public static final String CONST_HQL_UPDATE_PASSWORD_BY_USERNAME = "update BlogUser user set user.password = ? where user.userName = ?";

@Override
public BlogUser getUserByUsername(String username) {
	final Session session = getCurrentSession();
	final Query query = session.createQuery(CONST_HQL_QUERY_USER_BY_USERNAME);
	query.setString(0, username);
	try {
		return (BlogUser) query.uniqueResult();
	} catch (NonUniqueResultException e) {
		return null;
	}
}

@Override
public int updateUserPassword(String userName, String password) {
	final Session session = getCurrentSession();
	final Query query = session.createQuery(CONST_HQL_UPDATE_PASSWORD_BY_USERNAME);
	query.setString(0, password);
	query.setString(1, userName);
	return query.executeUpdate();

}

}
