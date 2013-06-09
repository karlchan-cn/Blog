/**
 * 
 */
package cn.com.kc.blog.pojo;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @author karl
 * 
 */
@Entity
@Table(name = "BLOG_IMAGE")
public class BlogImage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5219931739057719520L;

	/**
	 * 
	 */
	public BlogImage() {

	}

	@ManyToOne(cascade = { CascadeType.PERSIST }, fetch = FetchType.LAZY, targetEntity = BlogEntity.class)
	@JoinColumn(name = "ENTITY_ID", nullable = true)
	private BlogEntity entity;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String position;
	@Transient
	private Long tempid;
	@Transient
	private Long size;
	@Transient
	private String sizeUnit;
	@Transient
	private String showName;

	public String getShowName() {
		return showName;
	}

	public void setShowName(String showName) {
		this.showName = showName;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Long getTempid() {
		return tempid;
	}

	public void setTempid(Long tempId) {
		this.tempid = tempId;
	}

	public BlogEntity getEntity() {
		return entity;
	}

	public void setEntity(BlogEntity entity) {
		this.entity = entity;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSizeUnit() {
		return sizeUnit;
	}

	public void setSizeUnit(String sizeUnit) {
		this.sizeUnit = sizeUnit;
	}

}
//