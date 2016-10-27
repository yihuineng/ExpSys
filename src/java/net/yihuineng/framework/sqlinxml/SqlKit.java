package net.yihuineng.framework.sqlinxml;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jfinal.kit.PathKit;

import net.yihuineng.framework.kit.JaxbKit;

public class SqlKit {

	private static Logger logger = LoggerFactory.getLogger(SqlKit.class);

	private static Map<String, String> sqlMap;

	public static String sql(String groupNameAndsqlId) {
		if (sqlMap == null) {
			throw new NullPointerException("SqlInXmlPlugin not start");
		}
		return sqlMap.get(groupNameAndsqlId);
	}

	static void clearSqlMap() {
		sqlMap.clear();
	}

	static void init() {
		sqlMap = new HashMap<String, String>();
		loadFileList(PathKit.getRootClassPath() + "/sql");
	}

	public static void loadFileList(String strPath) {
		List<File> files = new ArrayList<File>();
		File dir = new File(strPath);
		File[] dirs = dir.listFiles(new FileFilter() {
			@Override
			public boolean accept(File file) {
				if (file.isDirectory() || file.getName().endsWith("sql.xml")) {
					return true;
				}
				return false;
			}
		});

		if (dirs == null)
			return;
		for (int i = 0; i < dirs.length; i++) {
			if (dirs[i].isDirectory()) {
				loadFileList(dirs[i].getAbsolutePath());
			} else {
				if (dirs[i].getName().endsWith("sql.xml")) {
					files.add(dirs[i]);
				}
			}
		}
		// 加载sql文件
		loadFiles(files);
	}

	/**
	 * 加载xml文件
	 *
	 * @param files
	 */
	private static void loadFiles(List<File> files) {
		for (File xmlfile : files) {
			SqlGroup group = JaxbKit.unmarshal(xmlfile, SqlGroup.class);
			String name = group.name;
			if (name == null || name.trim().equals("")) {
				name = xmlfile.getName();
			}
			for (SqlItem sqlItem : group.sqlItems) {
				sqlMap.put(name + "." + sqlItem.id, sqlItem.value);
				logger.debug("sqlinxml load {}.{}", name, sqlItem.id);
			}
		}
	}
}