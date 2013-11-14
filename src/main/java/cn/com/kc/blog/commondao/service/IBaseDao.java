/**
 * 
 */
package cn.com.kc.blog.commondao.service;

import java.io.Serializable;
import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;

/**
 * @author chenjinlong2
 * 
 */
public interface IBaseDao<M extends Serializable, PK extends Serializable> {
Serializable save(M model);

void delete(M model);

void update(M model);

M get(PK pk);

/**
 * 
 * @param queryString
 * @param isUnique
 * @param parameter
 * @return
 */
Long getTotalEntityNumberBySQL(final String queryString, final Boolean isUnique, final Object... parameter);

/**
 * 
 * @param pageRequest
 * @param queryHQL
 * @param totalNumberHQL
 * @param parameters
 * @return
 */
Page<Serializable> getPagedEntityListByHQL(final PageRequest pageRequest, final String queryHQL,
				final Long totalNumber, final Object... parameters);
}
