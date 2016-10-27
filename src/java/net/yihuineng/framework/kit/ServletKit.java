package net.yihuineng.framework.kit;

import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class ServletKit {
	
	/**
	 * 获取请求参数，不区分大小写
	 * @param request
	 * @param paramString
	 * @return
	 */
	public static String getParameter(ServletRequest request, String paramString) {
		Enumeration<String> enumer = request.getParameterNames();
		while (enumer.hasMoreElements()) {
			String paraName = enumer.nextElement();
			if (paraName.equalsIgnoreCase(paramString)) {
				return request.getParameter(paraName);
			}
		}
		return null;
	}

	/**
	 * 将参数转存到Map，且不区分大小写
	 * @param request
	 * @return
	 */
	public static Map<String, String> getParameterMap(HttpServletRequest request) {
		Map<String, String> map = new CaseInsensitiveMap<String>();
		Map<String, String[]> tmap = request.getParameterMap();
		Set<String> keys = tmap.keySet();
		for (String key : keys) {
			String[] valueArr = tmap.get(key);
			if (valueArr == null) {
				map.put(key, null);
			} else if (valueArr.length == 1) {
				map.put(key, valueArr[0]);
			} else {
				StringBuffer sb = new StringBuffer();
				for (int k = 0; k < valueArr.length; k++) {
					if (k != 0)
						sb.append(",");
					sb.append(valueArr[k]);
				}

				map.put(key, sb.toString());
			}
		}
		return map;
	}
	
}
