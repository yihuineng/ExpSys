package net.yihuineng.framework.rest;

import com.jfinal.core.Controller;
import com.jfinal.render.JsonRender;
import com.jfinal.render.Render;

public class RestApiController extends Controller {

	protected RestResponse restResponse = new RestResponse();

	@Override
	public Render getRender() {
		Render render = super.getRender();
		if (render == null) {
			render = new JsonRender(restResponse);
		}
		return render;
	}

}
