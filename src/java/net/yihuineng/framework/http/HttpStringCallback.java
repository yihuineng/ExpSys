package net.yihuineng.framework.http;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.jfinal.log.Logger;

/**
 * Http请求后，已简单的字符串形式方法
 */
public class HttpStringCallback implements HttpResponseCallbackIF {

	private final Logger log = Logger.getLogger(getClass());

	@Override
	public String onHttpOK(InputStream is) {
		try {
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			int i = -1;
			while ((i = is.read()) != -1) {
				baos.write(i);
			}
			return baos.toString();
		} catch (IOException e) {
			log.error("解析HTTP响应流失败,可能流格式不符合约定", e);
		}
		return null;
	}

}
