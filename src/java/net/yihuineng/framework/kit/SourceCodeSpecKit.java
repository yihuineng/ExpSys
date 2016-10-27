package net.yihuineng.framework.kit;

/**
 * 源码规范工具类
 * @author ehuan
 *
 */
public class SourceCodeSpecKit {

	public static String getLowerCamelCase(String s) {
		if (s==null || s.length()==0) {
			return "";
		}
		
		int firstLowerCharIndex = 0;
		char[] arr = s.toCharArray();
		for (int i = 0; i < arr.length; i++) {
			char c = arr[i];
			if (c>='a'&&c<='z') {
				break;
			}
			firstLowerCharIndex++;
		}
		
		int iLowEnd;
		if (firstLowerCharIndex==0) {
			return s;
		} else if (firstLowerCharIndex==1) {
			iLowEnd = 1;
		} else if (firstLowerCharIndex<arr.length) {
			iLowEnd = firstLowerCharIndex-1;
		} else {
			return s.toLowerCase();
		}
		
		StringBuffer sb = new StringBuffer(arr.length);
		for (int i = 0; i < iLowEnd; i++) {
			sb.append((char)(arr[i]+32));
		}
		for (int i = iLowEnd; i < arr.length; i++) {
			sb.append(arr[i]);
		}
		return sb.toString();
	}
	
	public static String toFirstUpperCase(String s) {
		if (s.length()>1) {
			return s.substring(0, 1).toUpperCase() + s.substring(1);
		} else {
			return s.toUpperCase();
		}
	}
	
}
