/**
 * 
 */
package org.hibernate.tutorial.util;

import java.util.GregorianCalendar;

import junit.framework.TestCase;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import cn.com.kc.blog.pojo.BlogEntity;
import cn.com.kc.blog.pojo.BlogUser;
import cn.com.kc.blog.pojo.Event;

/**
 * @author chenjinlong2
 * 
 */
public class TestHibernate extends TestCase {
	private final static Logger log = Logger.getLogger(TestHibernate.class);
	/**
	 * .
	 */
	private ApplicationContext context = null;

	protected void setUp() throws Exception {
		try {
			// context = new ClassPathXmlApplicationContext(
			// "application-context.xml");
		} catch (Exception e) {
			log.error(e.getMessage());
			throw new RuntimeException(e);
		}

	}

	/**
	 * ����
	 */
	public void testTransaction() {
		try {
			// fileUploadService.saveFile("");

			// TransactionDefinition.
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e.getMessage());
			throw new RuntimeException();
		}
	}

	public void testHiberSetup() {
		final Session session = HibernateUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		final Event event = new Event();
		event.setDate(GregorianCalendar.getInstance().getTime());
		event.setTitle("new title");
		session.save(event);
		session.getTransaction().commit();
		HibernateUtil.getSessionFactory().close();
	}

	public void testSaveManyToOne() {
		try {
			final Session session = HibernateUtil.getSessionFactory()
					.getCurrentSession();
			BlogUser user = new BlogUser();
			// user.setId(1924l);
			BlogEntity entity = new BlogEntity();
			entity.setUser(user);
			session.beginTransaction();
			session.save(user);
			session.save(entity);
			session.getTransaction().commit();
			HibernateUtil.getSessionFactory().close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void testCascadeDel() {
		try {
			final Session session = HibernateUtil.getSessionFactory()
					.getCurrentSession();

			session.beginTransaction();
			BlogUser user = (BlogUser) session.get(BlogUser.class, 1933l);
			session.delete(user);
			session.getTransaction().commit();
			HibernateUtil.getSessionFactory().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void tearDown() throws Exception {
	}

}
