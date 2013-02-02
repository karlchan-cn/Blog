/**
 * 
 */
package cn.com.kc.blog.dao.service.impl;

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
}
