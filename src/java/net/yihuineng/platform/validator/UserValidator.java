package net.yihuineng.platform.validator;

import com.jfinal.core.Controller;

import net.yihuineng.framework.easyui.validator.EasyUIValidator;

public class UserValidator extends EasyUIValidator {

	@Override
	protected void validate(Controller c) {
		String method = getActionMethod().getName();
		if ("doSave".equals(method)) {
			doSave(c);
		}
	}

	private void doSave(Controller c) {
		validateRequiredString("userName", "用户名不能为空");
		validateRequiredString("realName", "真实姓名不能为空");
		if (c.getParaToLong("id", 0L) == 0L) {
			validateRequiredString("newPassword", "密码不能为空");
		}
	}

}
