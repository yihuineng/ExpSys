package net.yihuineng.framework.easyui.validator;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.common.collect.Lists;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

import net.yihuineng.framework.kit.StrKit;

public abstract class EasyUIValidator extends Validator {

	List<String> errors = Lists.newArrayList();

	/**
	 * Handle the validate error.
	 */
	@Override
	protected void handleError(Controller c) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("status", 0);
		data.put("message", StrKit.join(errors, "<br>"));
		c.renderJson(data);
	}

	/**
	 * Add message when validate failure.
	 */
	@Override
	protected void addError(String errorKey, String errorMessage) {
		errors.add(errorMessage);
		super.addError("_invalidMessage", "数据校验失败");
	}

	protected void addError(String errorMessage) {
		addError(null, errorMessage);
	}

	/**
	 * Validate Required.
	 */
	protected void validateRequired(String field, String errorMessage) {
		validateRequired(field, null, errorMessage);
	}

	/**
	 * Validate required string.
	 */
	protected void validateRequiredString(String field, String errorMessage) {
		validateRequiredString(field, null, errorMessage);
	}

	/**
	 * Validate integer.
	 */
	protected void validateInteger(String field, int min, int max, String errorMessage) {
		validateInteger(field, min, max, null, errorMessage);
	}

	/**
	 * Validate integer.
	 */
	protected void validateInteger(String field, String errorMessage) {
		validateInteger(field, null, errorMessage);
	}

	/**
	 * Validate long.
	 */
	protected void validateLong(String field, long min, long max, String errorMessage) {
		validateLong(field, min, max, null, errorMessage);
	}

	/**
	 * Validate long.
	 */
	protected void validateLong(String field, String errorMessage) {
		validateLong(field, null, errorMessage);
	}

	/**
	 * Validate double.
	 */
	protected void validateDouble(String field, double min, double max, String errorMessage) {
		validateDouble(field, min, max, null, errorMessage);
	}

	/**
	 * Validate double.
	 */
	protected void validateDouble(String field, String errorMessage) {
		validateDouble(field, null, errorMessage);
	}

	/**
	 * Validate date.
	 */
	protected void validateDate(String field, Date min, Date max, String errorMessage) {
		validateDate(field, min, max, null, errorMessage);
	}

	/**
	 * Validate date. Date formate: yyyy-MM-dd
	 */
	protected void validateDate(String field, String min, String max, String errorMessage) {
		validateDate(field, min, max, null, errorMessage);
	}

	/**
	 * Validate equal field. Usually validate password and password again
	 */
	protected void validateEqualField(String field_1, String field_2, String errorMessage) {
		validateEqualField(field_1, field_2, null, errorMessage);
	}

	/**
	 * Validate equal string.
	 */
	protected void validateEqualString(String s1, String s2, String errorMessage) {
		validateEqualString(s1, s2, null, errorMessage);
	}

	/**
	 * Validate equal integer.
	 */
	protected void validateEqualInteger(Integer i1, Integer i2, String errorMessage) {
		validateEqualInteger(i1, i2, null, errorMessage);
	}

	/**
	 * Validate email.
	 */
	protected void validateEmail(String field, String errorMessage) {
		validateEmail(field, null, errorMessage);
	}

	/**
	 * Validate URL.
	 */
	protected void validateUrl(String field, String errorMessage) {
		validateUrl(field, null, errorMessage);
	}

	/**
	 * Validate regular expression.
	 */
	protected void validateRegex(String field, String regExpression, boolean isCaseSensitive, String errorMessage) {
		validateRegex(field, regExpression, isCaseSensitive, null, errorMessage);
	}

	/**
	 * Validate regular expression and case sensitive.
	 */
	protected void validateRegex(String field, String regExpression, String errorMessage) {
		validateRegex(field, regExpression, true, errorMessage);
	}

	protected void validateString(String field, int minLen, int maxLen, String errorMessage) {
		validateString(field, minLen, maxLen, errorMessage);
	}

	/**
	 * Validate token created by Controller.createToken(String).
	 */
	@Override
	protected void validateToken(String tokenName, String errorMessage) {
		super.validateToken(tokenName, null, errorMessage);
	}

	/**
	 * Validate token created by Controller.createToken().
	 */
	protected void validateToken(String errorMessage) {
		super.validateToken(null, errorMessage);
	}
}
