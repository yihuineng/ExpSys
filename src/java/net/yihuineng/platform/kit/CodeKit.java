package net.yihuineng.platform.kit;

import java.util.List;
import java.util.Map;

import net.yihuineng.framework.data.ModelKit;
import net.yihuineng.platform.model.PCodeModel;

public class CodeKit {
	
	public static Map<String, String> codeToMap(String codeType) {
		List<PCodeModel> list = listByCodeType(codeType);
		return ModelKit.toMap(list, "codeValue", "codeName");
	}

	public static List<PCodeModel> listByCodeType(String CodeType) {
		return PCodeModel.dao.find("select codeName,codeValue from PCode where parentCode=?", CodeType);
	}
	
}
