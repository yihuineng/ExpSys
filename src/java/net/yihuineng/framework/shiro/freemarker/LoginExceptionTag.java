package net.yihuineng.framework.shiro.freemarker;

import java.io.IOException;
import java.util.Map;

import freemarker.core.Environment;
import freemarker.log.Logger;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;

/**
 * <p>
 * Tag used to print out the String value of a user's default principal, or a
 * specific principal as specified by the tag's attributes.
 * </p>
 * <p/>
 * <p>
 * If no attributes are specified, the tag prints out the <tt>toString()</tt>
 * value of the user's default principal. If the <tt>type</tt> attribute is
 * specified, the tag looks for a principal with the given type. If the
 * <tt>property</tt> attribute is specified, the tag prints the string value of
 * the specified property of the principal. If no principal is found or the user
 * is not authenticated, the tag displays nothing unless a <tt>defaultValue</tt>
 * is specified.
 * </p>
 * <p/>
 * <p>
 * Equivalent to {@link org.apache.shiro.web.tags.PrincipalTag}
 * </p>
 *
 * @since 0.2
 */
public class LoginExceptionTag extends SecureTag {
	
	static final Logger log = Logger.getLogger("LoginExceptionTag");

	@SuppressWarnings("rawtypes")
	@Override
	public void render(Environment env, Map params, TemplateDirectiveBody body) throws IOException, TemplateException {
		String result = null;
		String value = params.get("name").toString();
		if (value != null) {
			if (log.isDebugEnabled()) {
				log.debug("Attr is exsit.");
			}
			if (value.equalsIgnoreCase("org.apache.shiro.authc.UnknownUserException")) { // 账号不存在
				result = "用户验证失败，请检查登录信息!";
			} else if (value.equalsIgnoreCase("org.apache.shiro.authc.IncorrectCredentialsException")) { // 密码不正确
				result = "用户验证失败，请检查登录信息!";
			} else {
				result = "用户验证失败，请检查登录信息!";
			}
		} else {
			if (log.isDebugEnabled()) {
				log.debug("Attr is not exsit.");
			}
		}

		if (result != null) {
			try {
				env.getOut().write(result);
			} catch (IOException ex) {
				throw new TemplateException("Error writing [" + result + "] to Freemarker.", ex, env);
			}
		} else {
			renderBody(env, body);
		}
	}
}