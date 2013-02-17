/**
 * 
 */
package cn.com.kc.blog.pojo;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author chenjinlong2
 * 
 */
@Entity
@Table(name = "BLOG_ENTITY")
public class BlogEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3390558414263442995L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@NotNull
	private String title;
	@NotNull
	private Timestamp createdate;
	@NotNull
	private Blob content;

	@ManyToOne(cascade = { CascadeType.PERSIST }, fetch = FetchType.LAZY, targetEntity = BlogUser.class)
	@JoinColumn(name = "USER_ID", nullable = false)
	private BlogUser user;

	@OneToMany(cascade = { CascadeType.REMOVE }, fetch = FetchType.LAZY, mappedBy = "entity")
	private Set<BlogComments> comments;
	@ManyToMany(cascade = { CascadeType.PERSIST }, fetch = FetchType.EAGER, targetEntity = BlogCategory.class)
	private List<BlogCategory> categorys;

	@OneToMany(cascade = { CascadeType.REMOVE }, fetch = FetchType.LAZY, mappedBy = "entity")
	private List<BlogImage> images;

	public List<BlogImage> getImages() {
		return images;
	}

	public void setImages(List<BlogImage> images) {
		this.images = images;
	}

	public List<BlogCategory> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<BlogCategory> categorys) {
		this.categorys = categorys;
	}

	public Set<BlogComments> getComments() {
		return comments;
	}

	public void setComments(Set<BlogComments> comments) {
		this.comments = comments;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Timestamp createdate) {
		this.createdate = createdate;
	}

	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}

	public BlogUser getUser() {
		return user;
	}

	public void setUser(BlogUser user) {
		this.user = user;
	}

}