package com.acme.u8t2.web.internal.portlet;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.ProcessAction;

import org.osgi.service.component.annotations.Component;

@Component(
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"javax.portlet.display-name=U8T2 Portlet",
		"javax.portlet.init-param.view-template=/view.jsp"
	},
	service = Portlet.class
)
public class U8T2Portlet extends MVCPortlet {

	@ProcessAction(name = "action2")
	public void handleSomeActionB(
		ActionRequest actionRequest, ActionResponse actionResponse) {

		if (_log.isWarnEnabled()) {
			_log.warn("Invoke #handleActionB(ActionRequest, ActionResponse)");
		}
	}

	public void processAction1(
		ActionRequest actionRequest, ActionResponse actionResponse) {

		if (_log.isWarnEnabled()) {
			_log.warn("Invoke #processAction1(ActionRequest, ActionResponse)");
		}
	}

	public void processAction3(
		ActionRequest actionRequest, ActionResponse actionResponse) {

		if (_log.isWarnEnabled()) {
			_log.warn("Invoke #processAction3(ActionRequest, ActionResponse)");
		}
	}

	private static final Log _log = LogFactoryUtil.getLog(U8T2Portlet.class);

}