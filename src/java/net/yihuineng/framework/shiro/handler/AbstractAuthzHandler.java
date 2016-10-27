package net.yihuineng.framework.shiro.handler;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

public abstract class AbstractAuthzHandler implements AuthzHandler {
 
    /**
     * 获得Shiro的Subject对象。
     * @return
     */
     protected Subject getSubject() {
         return SecurityUtils.getSubject();
     }
}