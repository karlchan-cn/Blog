/**
 * 
 */
package test.cn.com.kc.blog.mbean;

import javax.management.DynamicMBean;
import javax.management.NotCompliantMBeanException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * @author kchen1
 * 
 */
public class MBeanListener implements ServletContextListener {

/*
 * (non-Javadoc)
 * 
 * @see javax.servlet.ServletContextListener#contextInitialized(javax.servlet.
 * ServletContextEvent)
 */
@Override
public void contextInitialized(ServletContextEvent sce) {
	try {
		TestMBean tBean = new TestMBean(DynamicMBean.class);
	} catch (NotCompliantMBeanException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		throw new RuntimeException(e);
	}

}

/*
 * (non-Javadoc)
 * 
 * @see javax.servlet.ServletContextListener#contextDestroyed(javax.servlet.
 * ServletContextEvent)
 */
@Override
public void contextDestroyed(ServletContextEvent sce) {
	// TODO Auto-generated method stub

}

}
