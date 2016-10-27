package net.yihuineng.framework.easyxls;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import net.yihuineng.framework.easyxls.bean.ExcelConfig;
import net.yihuineng.framework.easyxls.common.XlsKit;

/**
 * excel，对导入导出进行封装
 *
 * @author liuzh
 */
public class EasyXls {
	/**
	 * 打开代码生成器，请在项目中执行，只有这样才能加载相应的类
	 */
	public static void openGenerater() {
		XlsKit.openGenerater();
	}

	/**
	 * 导入xls到List
	 *
	 * @param xmlPath
	 *            xml完整路径
	 * @param xlsFile
	 *            xls文件路径
	 * @return List对象
	 * @throws Exception
	 */
	public static List<?> xls2List(String xmlPath, File xlsFile)
			throws Exception {
		return XlsKit.xls2List(xmlPath, xlsFile);
	}

	/**
	 * 导入xls到List
	 *
	 * @param config
	 *            配置
	 * @param xlsFile
	 *            xls文件路径
	 * @return List对象
	 * @throws Exception
	 */
	public static List<?> xls2List(ExcelConfig config, File xlsFile)
			throws Exception {
		return XlsKit.xls2List(config, xlsFile);
	}

	/**
	 * 导入xls到List
	 *
	 * @param xmlPath
	 *            xml完整路径
	 * @param inputStream
	 *            xls文件流
	 * @return List对象
	 * @throws Exception
	 */
	public static List<?> xls2List(String xmlPath, InputStream inputStream)
			throws Exception {
		return XlsKit.xls2List(xmlPath, inputStream);
	}

	/**
	 * 导入xls到List
	 *
	 * @param config
	 *            配置
	 * @param inputStream
	 *            xls文件流
	 * @return List对象
	 * @throws Exception
	 */
	public static List<?> xls2List(ExcelConfig config, InputStream inputStream)
			throws Exception {
		return XlsKit.xls2List(config, inputStream);
	}

	/**
	 * 导出list对象到excel
	 *
	 * @param list
	 *            导出的list
	 * @param xmlPath
	 *            xml完整路径
	 * @param xlsPath
	 *            保存xls文件路径
	 * @return 处理结果，true成功，false失败
	 * @throws Exception
	 */
	public static boolean list2Xls(List<?> list, String xmlPath, String xlsPath)
			throws Exception {
		return XlsKit.list2Xls(list, xmlPath, xlsPath);
	}

	/**
	 * 导出list对象到excel
	 *
	 * @param config
	 *            配置
	 * @param list
	 *            导出的list
	 * @param xlsPath
	 *            保存xls文件路径
	 * @return 处理结果，true成功，false失败
	 * @throws Exception
	 */
	public static boolean list2Xls(ExcelConfig config, List<?> list,
			String xlsPath) throws Exception {
		return XlsKit.list2Xls(config, list, xlsPath);
	}

}
