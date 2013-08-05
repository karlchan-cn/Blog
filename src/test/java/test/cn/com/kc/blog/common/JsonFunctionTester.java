/**
 * 
 */
package test.cn.com.kc.blog.common;

import org.junit.Test;

import com.alibaba.fastjson.JSON;

import cn.com.kc.blog.pojo.BlogEntity;

/**
 * @author kchen1
 * 
 */
public class JsonFunctionTester {
@Test
public void testToJsonFunction() {
	BlogEntity entity = new BlogEntity();
	entity.setId(1l);
	JSON.toJSONString(entity);
}
}
