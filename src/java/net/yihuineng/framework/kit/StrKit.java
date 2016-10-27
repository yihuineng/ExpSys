package net.yihuineng.framework.kit;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StrKit {
	
	private static final Pattern PATTERN_FIELD = Pattern.compile("\\$\\{(\\w+?)\\}");
	private static final Pattern PATTERN_ID = Pattern.compile("[\\w\\_\\.\\,]*", 34);
	private static final Pattern PATTERN_DIGIT = Pattern.compile("^\\d*$", 34);
	
	/**
	 * 字符串为 null 或者为  "" 时返回 true
	 */
	public static boolean isEmpty(String str) {
		return str == null || "".equals(str.trim()) ? true : false;
	}
	
	/**
	 * 字符串不为 null 而且不为  "" 时返回 true
	 */
	public static boolean isNotEmpty(String str) {
		return str == null || "".equals(str.trim()) ? false : true;
	}

	public static boolean isNotEmpty(String... strings) {
		if (strings == null)
			return false;
		for (String str : strings)
			if (str == null || "".equals(str.trim()))
				return false;
		return true;
	}
	
	public static final String noNull(String string, String defaultString) {
		return isEmpty(string) ? defaultString : string;
	}

	public static final String noNull(String string) {
		return noNull(string, "");
	}

	
	public static boolean checkID(String str) {
		if (isEmpty(str)) return true;
		return PATTERN_ID.matcher(str).matches();
	}
	
	public static String join(Object arr[]) {
		return join(arr, ",");
	}

	public static String join(Object arr[][]) {
		return join(arr, "\n", ",");
	}

	public static String join(Object arr[], String spliter) {
		if (arr == null) return null;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < arr.length; i++) {
			if (i != 0) sb.append(spliter);
			sb.append(arr[i]);
		}

		return sb.toString();
	}

	public static String join(Object arr[][], String spliter1, String spliter2) {
		if (arr == null) return null;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < arr.length; i++) {
			if (i != 0) sb.append(spliter2);
			sb.append(join(arr[i], spliter2));
		}

		return sb.toString();
	}

	public static String join(List<?> list) {
		return join(list, ",");
	}

	public static String join(List<?> list, String spliter) {
		if (list == null) return null;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < list.size(); i++) {
			if (i != 0) sb.append(spliter);
			sb.append(list.get(i));
		}

		return sb.toString();
	}

	public static String replaceEx(String str, String subStr, String reStr) {
		if (str == null) return null;
		if (subStr == null || subStr.equals("") || subStr.length() > str.length() || reStr == null) return str;
		StringBuffer sb = new StringBuffer();
		String tmp = str;
		int index = -1;
		do {
			index = tmp.indexOf(subStr);
			if (index >= 0) {
				sb.append(tmp.substring(0, index));
				sb.append(reStr);
				tmp = tmp.substring(index + subStr.length());
			} else {
				sb.append(tmp);
				return sb.toString();
			}
		} while (true);
	}
	
	/**
	 * 判断是否在用逗号隔开的序列字符串中存在指定字符串
	 * @param listStr
	 * @param keyStr
	 * @return
	 */
	public static boolean existListString(String listStr, String keyStr) {
		return ("," + listStr + ",").indexOf(","+keyStr+",") > -1;
	}
	
	/**
	 * 字符串左边补齐
	 * @param srcString
	 * @param c
	 * @param length
	 * @return
	 */
	public static String leftPad(String srcString, char c, int length) {
		if (srcString == null) srcString = "";
		int tLen = srcString.length();
		if (tLen >= length) return srcString;
		int iMax = length - tLen;
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < iMax; i++)
			sb.append(c);

		sb.append(srcString);
		return sb.toString();
	}
	
	/**
	 * 按长度截断字符串，英中文都算一个字
	 * 
	 * @param src
	 * @param length
	 * @return
	 */
	public static String subString(String src, int length) {
		if (src == null) return null;
		int i = src.length();
		if (i > length)
			return src.substring(0, length);
		else
			return src;
	}
	
	public static boolean notBlank(String... strings) {
		if (strings == null)
			return false;
		for (String str : strings)
			if (str == null || "".equals(str.trim()))
				return false;
		return true;
	}
	
	public static boolean notNull(Object... paras) {
		if (paras == null)
			return false;
		for (Object obj : paras)
			if (obj == null)
				return false;
		return true;
	}
	
	public static String[] splitEx(String str, String spilter) {
		if (str == null) return null;
		if (spilter == null || spilter.equals("") || str.length() < spilter.length()) {
			String t[] = { str };
			return t;
		}
		ArrayList<String> al = new ArrayList<String>();
		char cs[] = str.toCharArray();
		char ss[] = spilter.toCharArray();
		int length = spilter.length();
		int lastIndex = 0;
		for (int i = 0; i <= str.length() - length;) {
			boolean notSuit = false;
			for (int j = 0; j < length; j++) {
				if (cs[i + j] == ss[j]) continue;
				notSuit = true;
				break;
			}

			if (!notSuit) {
				al.add(str.substring(lastIndex, i));
				i += length;
				lastIndex = i;
			} else {
				i++;
			}
		}

		if (lastIndex <= str.length()) al.add(str.substring(lastIndex, str.length()));
		String t[] = new String[al.size()];
		for (int i = 0; i < al.size(); i++)
			t[i] = al.get(i);

		return t;
	}
	
	public static boolean isDigit(String str) {
		if (isEmpty(str))
			return false;
		else
			return PATTERN_DIGIT.matcher(str).find();
	}
	
	public static String htmlEncode(String txt) {
	     StringBuffer buf = new StringBuffer();
	     for (int i = 0;i<txt.length();i++){
	         buf.append(htmlEncode(txt.charAt(i)));
	     }
	     return buf.toString();
	}
	
	private static String htmlEncode(int i){
	     if (i=='&') return "&amp;";
	     else if (i=='<') return "&lt;";
	     else if (i=='>') return "&gt;";
	     else if (i=='"') return "&quot;";
	     else return ""+(char)i;
	}

	public static String replacePlaceHolder(String html, Map<String, ?> map, boolean blankFlag) {
		return replacePlaceHolder(html, map, blankFlag, false);
	}
	
	public static String replacePlaceHolder(String html, Map<String, ?> map, boolean blankFlag, boolean spaceFlag) {
		Matcher matcher = PATTERN_FIELD.matcher(html);
		StringBuffer sb = new StringBuffer();
		int lastEndIndex = 0;
		String blank = "";
		if (spaceFlag) blank = "&nbsp;";
		for (; matcher.find(lastEndIndex); lastEndIndex = matcher.end()) {
			sb.append(html.substring(lastEndIndex, matcher.start()));
			String key = matcher.group(1);
			if (map.containsKey(key)) {
				Object o = map.get(key);
				if (o == null || o.equals(""))
					sb.append(blank);
				else
					sb.append(o);
			} else if (blankFlag)
				sb.append("");
			else
				sb.append(html.substring(matcher.start(), matcher.end()));
		}

		sb.append(html.substring(lastEndIndex));
		return sb.toString();
	}
	
}
