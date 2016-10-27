/**
 *  Copyright 2015 Peak Tai,台俊峰(taijunfeng_it@sina.com)
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package net.yihuineng.framework.rest;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * rest action key
 * Created by peak on 2015/1/23.
 */
class RestKey {
    private String origin;
    private List<Part> parts;
    private Set<String> nonRestfulMethods;

    RestKey(String origin, Set<String> nonRestfulMethods) {
        this.origin = origin;
        this.nonRestfulMethods = nonRestfulMethods;
        if (origin.startsWith("/")) {
            origin = origin.substring(1);
        }
        String[] arr = origin.split("/");
        parts = new ArrayList<Part>();
        for (String str : arr) {
            Part part = new Part();
            if (str.startsWith(":")) {
                part.variable = str.substring(1);
            } else {
                part.str = str;
            }
            parts.add(part);
        }
    }

    /**
     * 匹配
     *
     * @param target
     * @param request
     * @return
     */
    String match(String target, HttpServletRequest request) {
        //将target按斜线拆分成数组，用于匹配
        if (target.startsWith("/")) {
            target = target.substring(1);
        }
        String[] arr = target.split("/");
        // TODO 增加非标准restful接口支持url参数
        //url结尾的参数，在controller里可以通过getPara()获得
        String para = null;
        String nonRestfulMethod = null;
        if (arr.length == parts.size() + 1) {
            String arg = arr[arr.length - 1];
            if (nonRestfulMethods.contains(arg)) {
            	nonRestfulMethod = arg;
            } else {
            	para = arg;
            }
        } else if (arr.length != parts.size()) {
            return null;
        }
        //逐个部分进行比较
        Map<String, String> paras = new HashMap<String, String>();
        for (int i = 0; i < parts.size(); i++) {
            String str = arr[i];
            Part part = parts.get(i);
            if (part.str != null) {
                if (!part.str.equals(str)) {
                    return null;
                }
                continue;
            }
            paras.put(part.variable, str);
        }
        //在request里放入rest参数
        for (Map.Entry<String, String> entry : paras.entrySet()) {
            request.setAttribute(entry.getKey(), entry.getValue());
        }
        //根据请求方法生成新的路径
        String method = request.getMethod().toLowerCase();
        if (para != null) {
            return origin + "/" + method + "/" + para;
        } else if (nonRestfulMethod != null) {
        	return origin + "/" + nonRestfulMethod + String.valueOf(method.substring(0, 1).toUpperCase()).concat(method.substring(1));
        } else {
        	return origin + "/" + method;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RestKey)) {
            return false;
        }
        RestKey other = (RestKey) obj;
        if (parts.size() != other.parts.size()) {
            return false;
        }
        for (int i = 0; i < parts.size(); i++) {
            if (!parts.get(i).equals(other.parts.get(i))) {
                return false;
            }
        }
        return true;

    }

    private class Part {
        String str;
        String variable;

        @Override
        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Part)) {
                return false;
            }
            Part other = (Part) obj;
            return variable != null && other.variable != null || str.equals(other.str);
        }
    }
}
