package net.yihuineng.framework.http;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import com.jfinal.log.Logger;

import net.yihuineng.framework.kit.FileKit;
import net.yihuineng.framework.kit.NumberKit;

/**
 * Http请求后，已复合文件流形式方法
 */
public class HttpMultiFileCallback implements HttpResponseCallbackIF {

	private final Logger log = Logger.getLogger(getClass());

	protected Map<String, String> destFileMapx;
	protected Map<String, String> fieldMapx;

	public HttpMultiFileCallback(Map<String, String> destFileMapx) {
		this(destFileMapx, null);
	}

	public HttpMultiFileCallback(Map<String, String> destFileMapx, Map<String, String> fieldMapx) {
		this.destFileMapx = destFileMapx;
		this.fieldMapx = fieldMapx;
	}

	@Override
	public String onHttpOK(InputStream is) {
		try {
			boolean isFrist = true;
			byte[] bs = new byte[4];
			while (is.read(bs) != -1) {
				int len = NumberKit.toInt(bs);
				if (isFrist) {
					if (len < 0) {
						return "未知错误";
					} else if (len == 0) {
						return readString(is);
					}
				}

				String fieldName = readString(is, len);

				// 读取下一节内容长度
				bs = new byte[4];
				is.read(bs);
				len = NumberKit.toInt(bs);

				// 判断当前字段时候为大文件字段，若是大文件字段则输出到指定路径，否则按普通文本字段处理
				if (destFileMapx.containsKey(fieldName)) {
					String filePath = destFileMapx.get(fieldName);

					// 创建文件夹
					int tempIndex = filePath.lastIndexOf("/");
					if (tempIndex > 0) {
						FileKit.mkdir(filePath.substring(0, tempIndex));
					}

					BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(filePath));
					int count = len;
					int n = 0;
					while (count > 0) {
						bs = new byte[count > 4096 ? 4096 : count];
						if ((n = is.read(bs)) != -1) {
							os.write(bs, 0, n);
							count -= n;
						}
					}
					os.flush();
					os.close();

					dealSavedFile(fieldName, filePath);
				} else {
					String fieldValue = readString(is, len);
					if (fieldMapx != null) {
						fieldMapx.put(fieldName, fieldValue);
					}
				}

				bs = new byte[4];
			}
		} catch (IOException e) {
			log.error("解析HTTP响应流失败,可能流格式不符合约定", e);
		}
		return "OK";
	}

	protected void dealSavedFile(String fieldName, String filePath) {

	}

	private String readString(InputStream is) throws IOException, UnsupportedEncodingException {
		StringBuffer sb = new StringBuffer();
		for (int b; (b = is.read()) != -1;) {
			sb.append((char) b);
		}
		return new String(sb.toString().getBytes("ISO-8859-1"));
	}

	private String readString(InputStream is, int len) throws IOException, UnsupportedEncodingException {
		StringBuffer sb = new StringBuffer();
		for (int b; len > 0 && (b = is.read()) != -1; len--) {
			sb.append((char) b);
		}
		return new String(sb.toString().getBytes("ISO-8859-1"));
	}

}
