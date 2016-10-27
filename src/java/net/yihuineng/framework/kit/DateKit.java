package net.yihuineng.framework.kit;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import net.yihuineng.framework.kit.StrKit;

public class DateKit {
	public static final String Format_Date = "yyyy-MM-dd";
	public static final String Format_Time = "HH:mm:ss";
	public static final String Format_DateTime = "yyyy-MM-dd HH:mm:ss";

	public static String getCurrentDate() {
		return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());
	}

	public static String getCurrentDate(String format) {
		SimpleDateFormat t = new SimpleDateFormat(format);
		return t.format(new Date());
	}

	public static String getCurrentTime() {
		return (new SimpleDateFormat("HH:mm:ss")).format(new Date());
	}

	public static String getCurrentTime(String format) {
		SimpleDateFormat t = new SimpleDateFormat(format);
		return t.format(new Date());
	}

	public static String getCurrentDateTime() {
		String format = "yyyy-MM-dd HH:mm:ss";
		return getCurrentDateTime(format);
	}

	public static int getDayOfWeek() {
		Calendar cal = Calendar.getInstance();
		return cal.get(7);
	}

	public static int getDayOfWeek(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(7);
	}

	public static int getDayOfMonth() {
		Calendar cal = Calendar.getInstance();
		return cal.get(5);
	}

	public static int getDayOfMonth(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(5);
	}
	
	public static int getHourOfDay() {
		Calendar cal = Calendar.getInstance();
		return cal.get(Calendar.HOUR_OF_DAY);
	}
	
	public static int getHourOfDay(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(Calendar.HOUR_OF_DAY);
	}
	
	public static int getMinute() {
		Calendar cal = Calendar.getInstance();
		return cal.get(Calendar.MINUTE);
	}
	
	public static int getMinute(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(Calendar.MINUTE);
	}

	public static int getMaxDayOfMonth(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.getActualMaximum(5);
	}

	public static String getFirstDayOfMonth(String date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(parse(date));
		cal.set(5, 1);
		return (new SimpleDateFormat("yyyy-MM-dd")).format(cal.getTime());
	}

	public static int getDayOfYear() {
		Calendar cal = Calendar.getInstance();
		return cal.get(6);
	}

	public static int getDayOfYear(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(6);
	}

	public static int getDayOfWeek(String date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(parse(date));
		return cal.get(7);
	}

	public static int getDayOfMonth(String date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(parse(date));
		return cal.get(5);
	}

	public static int getDayOfYear(String date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(parse(date));
		return cal.get(6);
	}

	public static String getCurrentDateTime(String format) {
		SimpleDateFormat t = new SimpleDateFormat(format);
		return t.format(new Date());
	}

	public static String toString(Date date, String format) {
		if (date == null) {
			return "";
		} else {
			return (new SimpleDateFormat(format)).format(date);
		}
	}

	public static String toString(Date date) {
		return toString(date, "yyyy-MM-dd");
	}

	public static String toDateTimeString(Date date) {
		return toString(date, "yyyy-MM-dd HH:mm:ss");
	}

	public static String toTimeString(Date date) {
		return toString(date, "HH:mm:ss");
	}

	public static int compare(String date1, String date2) {
		return compare(date1, date2, "yyyy-MM-dd");
	}

	public static int compareTime(String time1, String time2) {
		return compareTime(time1, time2, "HH:mm:ss");
	}

	public static int compare(String date1, String date2, String format) {
		Date d1 = parse(date1, format);
		Date d2 = parse(date2, format);
		return d1.compareTo(d2);
	}

	public static int compareTime(String time1, String time2, String format) {
		String arr1[] = time1.split(":");
		String arr2[] = time2.split(":");
		if (arr1.length < 2)
			throw new RuntimeException("错误的时间值:" + time1);
		if (arr2.length < 2)
			throw new RuntimeException("错误的时间值:" + time2);
		int h1 = Integer.parseInt(arr1[0]);
		int m1 = Integer.parseInt(arr1[1]);
		int h2 = Integer.parseInt(arr2[0]);
		int m2 = Integer.parseInt(arr2[1]);
		int s1 = 0;
		int s2 = 0;
		if (arr1.length == 3)
			s1 = Integer.parseInt(arr1[2]);
		if (arr2.length == 3)
			s2 = Integer.parseInt(arr2[2]);
		if (h1 < 0 || h1 > 23 || m1 < 0 || m1 > 59 || s1 < 0 || s1 > 59)
			throw new RuntimeException("错误的时间值:" + time1);
		if (h2 < 0 || h2 > 23 || m2 < 0 || m2 > 59 || s2 < 0 || s2 > 59)
			throw new RuntimeException("错误的时间值:" + time2);
		if (h1 != h2)
			return h1 <= h2 ? -1 : 1;
		if (m1 == m2) {
			if (s1 == s2)
				return 0;
			else
				return s1 <= s2 ? -1 : 1;
		} else {
			return m1 <= m2 ? -1 : 1;
		}
	}

	public static boolean isTime(String time) {
		String arr[];
		try {
			arr = time.split(":");
			if (arr.length < 2)
				return false;
			int h;
			int m;
			int s;
			h = Integer.parseInt(arr[0]);
			m = Integer.parseInt(arr[1]);
			s = 0;
			if (arr.length == 3)
				s = Integer.parseInt(arr[2]);
			return h >= 0 && h <= 23 && m >= 0 && m <= 59 && s >= 0 && s <= 59;
		} catch(Exception e){
			return false;
		}
	}

	public static boolean isDate(String date) {
		String arr[];
		arr = date.split("-");
		if (arr.length < 3)
			return false;
		int y;
		int m;
		int d;
		try {
			y = Integer.parseInt(arr[0]);
			m = Integer.parseInt(arr[1]);
			d = Integer.parseInt(arr[2]);
		} catch(Exception e){
			return false;
		}
		return y >= 0 && m <= 12 && m >= 0 && d >= 0 && d <= 31;
	}

	public static boolean isDateTime(String str)
	{
		if (StrKit.isEmpty(str))
			return false;
		if (str.indexOf(" ") > 0)
		{
			String arr[] = str.split(" ");
			if (arr.length == 2)
				return isDate(arr[0]) && isTime(arr[1]);
			else
				return false;
		} else
		{
			return isDate(str);
		}
	}

	public static boolean isWeekend(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int t = cal.get(7);
		return t == 7 || t == 1;
	}

	public static boolean isWeekend(String str) {
		return isWeekend(parse(str));
	}

	public static Date parse(String str) {
		if (StrKit.isEmpty(str))
			return null;
		try {
			if(str.length()==10){
				return (new SimpleDateFormat("yyyy-MM-dd")).parse(str);
			}else if(str.length()==16){
				return (new SimpleDateFormat("yyyy-MM-dd HH:mm")).parse(str);
			}else if(str.length()==19){
				return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(str);
			}else if(str.length()==22){
				return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")).parse(str);
			}else{
				return null;
			}
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static Date parse(String str, String format) {
		if (StrKit.isEmpty(str))
			return null;
		try {
		SimpleDateFormat t = new SimpleDateFormat(format);
		return t.parse(str);
		} catch(ParseException e){
			e.printStackTrace();
			return null;
		}
	}

	public static Date parseDateTime(String str) {
		if (StrKit.isEmpty(str))
			return null;
		if (str.length() == 10)
			return parse(str);
		try {
			return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}		
	}

	public static Date parseDateTime(String str, String format) {
		if (StrKit.isEmpty(str))
			return null;
		try {
			SimpleDateFormat t = new SimpleDateFormat(format);
			return t.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static Date addMinute(Date date, int count) {
		return new Date(date.getTime() + 60000L * (long)count);
	}

	public static Date addHour(Date date, int count) {
		return new Date(date.getTime() + 0x36ee80L * (long)count);
	}

	public static Date addDay(Date date, int count) {
		return new Date(date.getTime() + 0x5265c00L * (long)count);
	}

	public static Date addWeek(Date date, int count) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(3, count);
		return c.getTime();
	}

	public static Date addMonth(Date date, int count) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(2, count);
		return c.getTime();
	}

	public static Date addYear(Date date, int count) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(1, count);
		return c.getTime();
	}

	public static String toDisplayDateTime(String date) {
		if (StrKit.isEmpty(date))
			return null;
		if (isDate(date))
			return toDisplayDateTime(parse(date));
		Date d;
		try {
			SimpleDateFormat t = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			d = t.parse(date);
			return toDisplayDateTime(d);
		} catch(ParseException e) {
			e.printStackTrace();
			return "不是标准格式时间!";
		}
	}

	public static String convertChineseNumber(String strDate) {
		strDate = StrKit.replaceEx(strDate, "一十一", "11");
		strDate = StrKit.replaceEx(strDate, "一十二", "12");
		strDate = StrKit.replaceEx(strDate, "一十三", "13");
		strDate = StrKit.replaceEx(strDate, "一十四", "14");
		strDate = StrKit.replaceEx(strDate, "一十五", "15");
		strDate = StrKit.replaceEx(strDate, "一十六", "16");
		strDate = StrKit.replaceEx(strDate, "一十七", "17");
		strDate = StrKit.replaceEx(strDate, "一十八", "18");
		strDate = StrKit.replaceEx(strDate, "一十九", "19");
		strDate = StrKit.replaceEx(strDate, "二十一", "21");
		strDate = StrKit.replaceEx(strDate, "二十二", "22");
		strDate = StrKit.replaceEx(strDate, "二十三", "23");
		strDate = StrKit.replaceEx(strDate, "二十四", "24");
		strDate = StrKit.replaceEx(strDate, "二十五", "25");
		strDate = StrKit.replaceEx(strDate, "二十六", "26");
		strDate = StrKit.replaceEx(strDate, "二十七", "27");
		strDate = StrKit.replaceEx(strDate, "二十八", "28");
		strDate = StrKit.replaceEx(strDate, "二十九", "29");
		strDate = StrKit.replaceEx(strDate, "十一", "11");
		strDate = StrKit.replaceEx(strDate, "十二", "12");
		strDate = StrKit.replaceEx(strDate, "十三", "13");
		strDate = StrKit.replaceEx(strDate, "十四", "14");
		strDate = StrKit.replaceEx(strDate, "十五", "15");
		strDate = StrKit.replaceEx(strDate, "十六", "16");
		strDate = StrKit.replaceEx(strDate, "十七", "17");
		strDate = StrKit.replaceEx(strDate, "十八", "18");
		strDate = StrKit.replaceEx(strDate, "十九", "19");
		strDate = StrKit.replaceEx(strDate, "十", "10");
		strDate = StrKit.replaceEx(strDate, "二十", "20");
		strDate = StrKit.replaceEx(strDate, "三十", "20");
		strDate = StrKit.replaceEx(strDate, "三十一", "31");
		strDate = StrKit.replaceEx(strDate, "零", "0");
		strDate = StrKit.replaceEx(strDate, "○", "0");
		strDate = StrKit.replaceEx(strDate, "一", "1");
		strDate = StrKit.replaceEx(strDate, "二", "2");
		strDate = StrKit.replaceEx(strDate, "三", "3");
		strDate = StrKit.replaceEx(strDate, "四", "4");
		strDate = StrKit.replaceEx(strDate, "五", "5");
		strDate = StrKit.replaceEx(strDate, "六", "6");
		strDate = StrKit.replaceEx(strDate, "七", "7");
		strDate = StrKit.replaceEx(strDate, "八", "8");
		strDate = StrKit.replaceEx(strDate, "九", "9");
		return strDate;
	}

	public static String toDisplayDateTime(Date date) {
		long minite = (System.currentTimeMillis() - date.getTime()) / 60000L;
		if (minite < 60L)
			return toString(date, "MM-dd") + " " + minite + "分钟前";
		if (minite < 1440L)
			return toString(date, "MM-dd") + " " + minite / 60L + "小时前";
		else
			return toString(date, "MM-dd") + " " + minite / 1440L + "天前";
	}
	
	/**
	 * 字符串日期转换成中文格式日期  
	 * @param date
	 * @return
	 */
	public static String toChineseDate(Date date) {   
		return toChineseDate(toString(date));
	}
	
	/**  
	 * 字符串日期转换成中文格式日期  
	 * @param date  字符串日期 yyyy-MM-dd  
	 * @return  yyyy年MM月dd日  
	 * @throws Exception  
	 */  
	public static String toChineseDate(String date) {   
	    String result = "";   
	    String[]  cnDate = new String[]{"○","一","二","三","四","五","六","七","八","九"};   
	    String ten = "十";   
	    String[] dateStr = date.split("-");   
	    for (int i=0; i<dateStr.length; i++) {   
	        for (int j=0; j<dateStr[i].length(); j++) {   
	            String charStr = dateStr[i];   
	            String str = String.valueOf(charStr.charAt(j));   
	            if (charStr.length() == 2) {   
	                if (charStr.equals("10")) {   
	                    result += ten;   
	                    break;   
	                } else {   
	                    if (j == 0) {   
	                        if (charStr.charAt(j) == '1')    
	                            result += ten;   
	                        else if (charStr.charAt(j) == '0')   
	                            result += "";   
	                        else  
	                            result += cnDate[Integer.parseInt(str)] + ten;   
	                    }   
	                    if (j == 1) {   
	                        if (charStr.charAt(j) == '0')   
	                            result += "";   
	                         else  
	                            result += cnDate[Integer.parseInt(str)];   
	                    }   
	                }   
	            } else {   
	                result += cnDate[Integer.parseInt(str)];   
	            }   
	        }   
	        if (i == 0) {   
	            result += "年";   
	            continue;   
	        }   
	        if (i == 1) {   
	            result += "月";   
	            continue;   
	        }   
	        if (i == 2) {   
	            result += "日";   
	            continue;   
	        }   
	    }   
	    return result;   
	}

}
