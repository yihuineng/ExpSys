package net.yihuineng.platform.controller;

import com.jfinal.core.Controller;

import net.yihuineng.codegen.ModelGenerator;

public class ModelGenController extends Controller {

	public void index() {
		setAttr("uuid", "dddd");
		renderFreeMarker("index.ftl");
	}
	
	public void gen() throws Exception {
		final String $PackageName = getPara("PackageName");
		final String $TableName = getPara("TableName");
		ModelGenerator.run($PackageName, $TableName.split(","));
		renderText("成功");
	}
	
}
