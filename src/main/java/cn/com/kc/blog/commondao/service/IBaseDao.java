/**
 * 
 */
package cn.com.kc.blog.commondao.service;

import java.io.Serializable;

/**
 * @author chenjinlong2
 * 
 */
public interface IBaseDao<M extends Serializable, PK extends Serializable> {
	Serializable save(M model);

	void delete(M model);

	void update(M model);

	M get(PK pk);
}
