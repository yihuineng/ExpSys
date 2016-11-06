package net.yihuineng.framework.http;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.jfinal.log.Logger;

public class HttpFileCallback implements HttpResponseCallbackIF {
	
	private final Logger log = Logger.getLogger(getClass());

	protected String saveFilePath;

	public HttpFileCallback(String saveFilePath) {
		this.saveFilePath = saveFilePath;
	}

	@Override
	public String onHttpOK(InputStream is) {
		try {
			OutputStream os = new FileOutputStream(saveFilePath);
			int a;
			while ((a = is.read()) != -1) {
				os.write(a);
			}
			os.flush();
			os.close();
			return "OK";
		} catch (Exception e) {
			log.error("HTTP请求处理失败", e);
			return "保存流到文件失败";
		}
	}

}
