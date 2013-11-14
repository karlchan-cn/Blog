/**
 * 
 */
package cn.com.kc.blog.commondao.service.impl;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;
import javax.persistence.Id;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import cn.com.kc.blog.commondao.pagination.impl.PageImpl;
import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;
import cn.com.kc.blog.commondao.service.IBaseDao;

/**
 * @author chenjinlong2
 * 
 */
@Scope("singleton")
@Component("cn.com.kc.blog.commondao.service.IBaseDao")
public class BaseDaoImpl<M extends Serializable, PK extends Serializable>
				implements IBaseDao<M, PK> {
/**
	 * 
	 */
@Resource(name = "localSessionFactory")
private SessionFactory sessionFactory;

/**
 * 
 * @param newSessionFactory
 */
public void setSessionFactory(final SessionFactory newSessionFactory) {
	this.sessionFactory = newSessionFactory;
}

private final Class<M> entityClass;
private String pkName = null;

@SuppressWarnings("unchecked")
public BaseDaoImpl() {
	if (getClass().equals(BaseDaoImpl.class)) {
		this.entityClass = (Class<M>) Serializable.class;
		return;
	}
	this.entityClass = (Class<M>) ((ParameterizedType) getClass()
					.getGenericSuperclass()).getActualTypeArguments()[0];
	final Field[] fields = this.entityClass.getDeclaredFields();
	for (final Field f : fields) {
		if (f.isAnnotationPresent(Id.class)) {
			this.pkName = f.getName();
			break;
		}
	}
	// Assert.notNull(pkName);
}

/**
 * 
 * @return
 */
protected Session getCurrentSession() {
	return this.sessionFactory.getCurrentSession();
}

public void saveObject(Object object) {
	final Session session = getCurrentSession();
	session.save(object);
}

public void delete(M model) {
	getCurrentSession().delete(model);

}

@SuppressWarnings("unchecked")
public M get(PK pk) {
	return (M) getCurrentSession().get(this.entityClass, pk);
}

public Serializable save(M model) {
	return getCurrentSession().save(model);
}

public void update(M model) {
	getCurrentSession().update(model);

}

@Override
public Long getTotalEntityNumberBySQL(final String queryString, final Boolean isUnique, final Object... parameter) {
	final Session session = getCurrentSession();
	final Query query = session.createQuery(queryString);
	for (int i = 0; i < parameter.length; i++) {
		query.setParameter(i, parameter[i]);
	}
	if (isUnique) {
		return (Long) query.uniqueResult();
	} else {
		return Long.valueOf(query.list().size());
	}
}

@Override
public Page<Serializable> getPagedEntityListByHQL(PageRequest pageRequest, String queryHQL, Long totalNumberOfElements,
				Object... parameters) {
	final Query query = getCurrentSession().createQuery(queryHQL);
	query.setFirstResult((pageRequest.getPageNumber() - 1) * pageRequest.getPageSize());
	query.setMaxResults(pageRequest.getPageSize());
	return new PageImpl(query.list(), totalNumberOfElements, pageRequest.getPageNumber(), pageRequest.getPageNumber());
}
}
