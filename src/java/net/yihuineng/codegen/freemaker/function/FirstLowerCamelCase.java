package net.yihuineng.codegen.freemaker.function;

import java.util.List;

import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;
import net.yihuineng.framework.kit.SourceCodeSpecKit;

public class FirstLowerCamelCase implements TemplateMethodModelEx {

	@SuppressWarnings("rawtypes")
	@Override
	public Object exec(List arguments) throws TemplateModelException {
		String s = arguments.get(0).toString();
		
		return SourceCodeSpecKit.getLowerCamelCase(s);
	}

}
