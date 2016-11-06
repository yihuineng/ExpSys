package net.yihuineng.framework.http;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import net.yihuineng.framework.kit.NumberKit;

public class HttpResponseUtil {

	public static void addField(OutputStream os, String fieldName, String fieldValue) throws IOException {
		if (fieldName!=null && fieldValue!=null) {
			byte bsName[] = fieldName.getBytes();
			os.write(NumberKit.toBytes(bsName.length));
			os.write(bsName);

			byte bsValue[] = fieldValue.getBytes();
			os.write(NumberKit.toBytes(bsValue.length));
			os.write(bsValue);
		}
	}

	public static void setError(OutputStream os, String message) throws IOException {
		os.write(NumberKit.toBytes(0));
		os.write(message.getBytes());
	}	

	// TODO 文件不存在判断及处理
	public static void addFile(OutputStream os, String fieldName, String file) throws IOException {
		byte bsName[] = fieldName.getBytes();
		os.write(NumberKit.toBytes(bsName.length));
		os.write(bsName);

		FileInputStream is = new FileInputStream(file);
		os.write(NumberKit.toBytes(is.available()));
		byte buffer[] = new byte[4096];
		for (int n = 0; (n = is.read(buffer)) != -1;) {
			os.write(buffer, 0, n);
		}
		is.close();
	}
}
