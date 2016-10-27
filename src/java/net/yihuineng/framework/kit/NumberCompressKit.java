package net.yihuineng.framework.kit;

import java.util.HashMap;
import java.util.Map;

/**
 * 64进制和10进制的转换类
 */
public class NumberCompressKit {

	final private static char[] digits;
	final private static Map<Character, Integer> digitIndexMap;
	static {
		digits = "0123456789abcdefghijklmnopqrstuvwxyz!=()*-.<>~[?]^`{|}$',:;&@+/#".toCharArray();
		digitIndexMap = new HashMap<Character, Integer>();
		for (int i = 0; i < digits.length; i++) {
			digitIndexMap.put(digits[i], i);
		}
	}
	
	public static String compressNumberForDb(long number) {
		String s = compressNumber(number, 6);
		
		return s;
	}
	
	/**
	 * 把10进制的数字转换成64进制
	 * @param number
	 * @return
	 */
	public static String compressNumber(long number) {
		return compressNumber(number, 6);
	}

	/**
	 * 把10进制的数字转换成64进制
	 * 
	 * @param number
	 * @param shift
	 * @return
	 */
	private static String compressNumber(long number, int shift) {
		char[] buf = new char[64];
		int charPos = 64;
		int radix = 1 << shift;
		long mask = radix - 1;
		do {
			buf[--charPos] = digits[(int) (number & mask)];
			number >>>= shift;
		} while (number != 0);
		return new String(buf, charPos, (64 - charPos));
	}

	/**
	 * 把64进制的字符串转换成10进制
	 * 
	 * @param decompStr
	 * @return
	 */
	public static long uncompressNumber(String decompStr) {
		long result = 0;
		for (int i = decompStr.length() - 1; i >= 0; i--) {
			if (i == decompStr.length() - 1) {
				result += getCharIndexNum(decompStr.charAt(i));
				continue;
			}
			for (int j = 0; j < digits.length; j++) {
				if (decompStr.charAt(i) == digits[j]) {
					result += ((long) j) << 6 * (decompStr.length() - 1 - i);
				}
			}
		}
		return result;
	}

	/**
	 * 
	 * @param ch
	 * @return
	 */
	private static int getCharIndexNum(char ch) {
		Integer o = digitIndexMap.get(ch);
		if (o!=null) {
			return o.intValue();
		} else {
			return 0;
		}
	}
	
}
