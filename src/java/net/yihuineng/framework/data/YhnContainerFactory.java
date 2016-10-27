package net.yihuineng.framework.data;

import java.util.Map;
import java.util.Set;

import com.jfinal.plugin.activerecord.IContainerFactory;

import net.yihuineng.framework.kit.CaseInsensitiveSet;
import net.yihuineng.framework.kit.LinkedCaseInsensitiveMap;

public class YhnContainerFactory implements IContainerFactory {

	public Map<String, Object> getAttrsMap() {
		return new LinkedCaseInsensitiveMap<Object>();
	}

	public Map<String, Object> getColumnsMap() {
		return new LinkedCaseInsensitiveMap<Object>();
	}

	public Set<String> getModifyFlagSet() {
		return new CaseInsensitiveSet();
	}
	
}

