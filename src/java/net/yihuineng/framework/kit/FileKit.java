package net.yihuineng.framework.kit;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.commons.lang3.ArrayUtils;

import com.jfinal.core.Const;
import com.jfinal.log.Log;

public class FileKit {

	private final static Log log = Log.getLog(FileKit.class);

	public static String getExtension(String fileName) {
		int index = fileName.lastIndexOf(".");
		if (index < 0) {
			return null;
		}
		String ext = fileName.substring(index + 1);
		return ext.toLowerCase();
	}

	public static String normalizePath(String path) {
		path = path.replace('\\', '/');
		path = StrKit.replaceEx(path, "../", "/");
		path = StrKit.replaceEx(path, "./", "/");
		if (path.endsWith("..")) {
			path = path.substring(0, path.length() - 2);
		}
		path = path.replaceAll("/+", "/");
		return path;
	}

	public static String readText(File f) {
		return readText(f, Const.DEFAULT_ENCODING);
	}

	public static String readText(File f, String encoding) {
		String str;
		try {
			InputStream is = new FileInputStream(f);
			str = readText(is, encoding);
			is.close();
			return str;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String readText(InputStream is, String encoding) {
		StringBuffer sb;
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(is, encoding));
			sb = new StringBuffer();
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line);
				sb.append("\n");
			}
			br.close();
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String readText(String fileName) {
		return readText(fileName, Const.DEFAULT_ENCODING);
	}

	public static String readText(String fileName, String encoding) {
		StringBuffer sb;
		try {
			InputStream is = new FileInputStream(fileName);
			BufferedReader br = new BufferedReader(new InputStreamReader(is, encoding));
			sb = new StringBuffer();
			int c = br.read();
			if (!encoding.equalsIgnoreCase("utf-8") || c != 65279)
				sb.append((char) c);
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line);
				sb.append("\n");
			}
			br.close();
			is.close();
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean writeByte(File f, byte[] b) {
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(f, true);
			BufferedOutputStream buff = new BufferedOutputStream(fos);
			buff.write(b);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static boolean writeByte(String fileName, byte[] b) {
		fileName = normalizePath(fileName);
		BufferedOutputStream buff = null;
		try {
			FileOutputStream fos = new FileOutputStream(fileName);
			buff = new BufferedOutputStream(fos);
			buff.write(b);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (buff != null) {
				try {
					buff.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static boolean writeText(String fileName, String content) {
		return writeText(fileName, content, Const.DEFAULT_ENCODING);
	}

	public static boolean writeText(String fileName, String content, String encoding) {
		return writeText(fileName, content, encoding, false);
	}

	public static boolean writeText(String fileName, String content, String encoding, boolean bomFlag) {
		fileName = normalizePath(fileName);
		try {
			byte[] bs = content.getBytes(encoding);
			if ((encoding.equalsIgnoreCase("UTF-8")) && (bomFlag)) {
				byte[] bom = { -17, -69, -65 };
				bs = ArrayUtils.addAll(bom, bs);
			}
			writeByte(fileName, bs);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public static boolean delete(String path) {
		File file = new File(path);
		return delete(file);
	}

	public static boolean delete(File file) {
		if (!file.exists()) {
			log.warn("文件或文件夹不存在：" + file);
			return false;
		}
		if (file.isFile()) {
			return file.delete();
		} else {
			return deleteDir(file);
		}
	}

	private static boolean deleteDir(File dir) {
		try {
			if (deleteFromDir(dir) && dir.delete())
				return true;
			return false;
		} catch (Exception e) {
			log.warn("删除文件夹操作出错");
			return false;
		}
	}

	public static boolean mkdir(String path) {
		File dir = new File(path);
		if (!dir.exists())
			dir.mkdirs();
		return true;
	}

	public static boolean deleteFromDir(String dirPath) {
		File file = new File(dirPath);
		return deleteFromDir(file);
	}

	public static boolean deleteFromDir(File dir) {
		if (!dir.exists()) {
			log.warn("文件夹不存在：" + dir);
			return false;
		}
		if (!dir.isDirectory()) {
			log.warn(dir + "不是文件夹");
			return false;
		}
		File tempList[] = dir.listFiles();
		for (int i = 0; i < tempList.length; i++)
			if (!delete(tempList[i]))
				return false;

		return true;
	}

	public static boolean copy(String oldPath, String newPath, FileFilter filter) {
		File oldFile = new File(oldPath);
		File oldFiles[] = oldFile.listFiles(filter);
		boolean flag = true;
		if (oldFiles != null) {
			for (int i = 0; i < oldFiles.length; i++)
				if (!copy(oldFiles[i], newPath + "/" + oldFiles[i].getName()))
					flag = false;

		}
		return flag;
	}

	public static boolean copy(String oldPath, String newPath) {
		File oldFile = new File(oldPath);
		return copy(oldFile, newPath);
	}

	public static boolean copy(File oldFile, String newPath) {
		if (!oldFile.exists()) {
			log.warn("文件或者文件夹不存在：" + oldFile);
			return false;
		}
		if (oldFile.isFile())
			return copyFile(oldFile, newPath);
		else
			return copyDir(oldFile, newPath);
	}

	private static boolean copyFile(File oldFile, String newPath) {
		if (!oldFile.exists()) {
			log.warn("文件不存在：" + oldFile);
			return false;
		}
		if (!oldFile.isFile()) {
			log.warn(oldFile + "不是文件");
			return false;
		}
		try {
			int byteread = 0;
			InputStream inStream = new FileInputStream(oldFile);
			FileOutputStream fs = new FileOutputStream(newPath);
			byte buffer[] = new byte[1024];
			while ((byteread = inStream.read(buffer)) != -1)
				fs.write(buffer, 0, byteread);
			fs.close();
			inStream.close();
		} catch (Exception e) {
			log.warn("复制单个文件" + oldFile.getPath() + "操作出错。错误原因:" + e.getMessage());
			return false;
		}
		return true;
	}

	private static boolean copyDir(File oldDir, String newPath) {
		if (!oldDir.exists()) {
			log.info("文件夹不存在：" + oldDir);
			return false;
		}
		if (!oldDir.isDirectory()) {
			log.info(oldDir + "不是文件夹");
			return false;
		}
		File files[];
		File temp;
		try {
			(new File(newPath)).mkdirs();
			files = oldDir.listFiles();
			temp = null;

			for (int i = 0; i < files.length; i++) {
				temp = files[i];
				if (temp.isFile()) {
					if (!copyFile(temp, newPath + "/" + temp.getName()))
						return false;
				} else if (temp.isDirectory() && !copyDir(temp, newPath + "/" + temp.getName()))
					return false;
			}
			return true;
		} catch (Exception e) {
			log.info("复制整个文件夹内容操作出错。错误原因:" + e.getMessage());
			return false;
		}
	}

	public static boolean move(String oldPath, String newPath) {
		return copy(oldPath, newPath) && delete(oldPath);
	}

	public static boolean move(File oldFile, String newPath) {
		return copy(oldFile, newPath) && delete(oldFile);
	}

}
