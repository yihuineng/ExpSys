package net.yihuineng.codegen;

import java.io.File;
import java.io.PrintWriter;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

/**
 * Base class for code generator.
 */
public abstract class AbstractCodeGenerator {
	
	protected String outDir;
	protected String modulePackage;
	protected Configuration ftlConfig;

	protected abstract void loadTemplates(Configuration cfg) throws Exception;

	protected void initTemplate() throws Exception {
		ftlConfig = new Configuration();

		ftlConfig.setClassForTemplateLoading(this.getClass(), "template");

		DefaultObjectWrapper ow = new DefaultObjectWrapper();

		ftlConfig.setObjectWrapper(ow);

		loadTemplates(ftlConfig);
	}
	
	protected void processTpl(String pkg, String name, Object o, Template tpl, String charset, boolean override) throws Exception {
		if (StringUtils.isBlank(pkg)) {
			throw new Exception("package name of [" + name + "] can not be empty");
		}

		PrintWriter pw = null;
		try {
			File dir = new File(outDir, pkg.replace('.', '/'));
			dir.mkdirs();

			File file = new File(dir.getPath(), name);
			if (!override && file.exists()) {
				System.out.println("跳过 - " + file.getPath());
				return;
			}
			System.out.println("生成 - " + file.getPath());

			if (charset == null) {
				pw = new PrintWriter(file);
			}
			else {
				pw = new PrintWriter(file, charset);
			}

			tpl.process(o, pw);
			pw.flush();
		}
		finally {
			IOUtils.closeQuietly(pw);
		}
	}
		
	protected void processTpl(String pkg, String name, Object o, Template tpl, boolean override) throws Exception {
		processTpl(pkg, name, o, tpl, "UTF-8", override);
	}
	
	protected void processTpl(String pkg, String name, Object o, Template tpl) throws Exception {
		processTpl(pkg, name, o, tpl, true);
	}
	
	/**
	 * @param outdir the outdir to set
	 */
	public void setOut(String outdir) {
		this.outDir = outdir;
	}
	
	public void setModulePackage(String modulePackage) {
		this.modulePackage = modulePackage;
	}

}
