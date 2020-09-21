<%--
/**
 * Copyright 2000-present Liferay, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
--%>

<%@ include file="/init.jsp" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<aui:button name="selectRole" value="Select" />

<%
String itemSelectorURL = String.valueOf(request.getAttribute("itemSelectorURL"));
%>

<aui:script require="frontend-js-web/liferay/ItemSelectorDialog.es as ItemSelectorDialog">
	var selectRoleButton = document.getElementById('<portlet:namespace />selectRole');

	selectRoleButton.addEventListener(
		'click',
		function(event) {
			var itemSelectorDialog = new ItemSelectorDialog.default(
				{
					eventName: 'selectItem',
					title: '<liferay-ui:message key="select-role" />',
					url: '<%= itemSelectorURL %>'
				}
			);

			itemSelectorDialog.on(
				'selectedItemChange',
				function(event) {
					var selectedItem = event.selectedItem;

					if (selectedItem) {
						// Use the selected item value(s) here.
					}
				}
			);

			itemSelectorDialog.open();
		}
	);
</aui:script>