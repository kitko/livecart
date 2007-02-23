{includeJs file="library/dhtmlxtree/dhtmlXCommon.js"}
{includeJs file="library/dhtmlxtree/dhtmlXTree.js"}
{includeJs file="backend/Settings.js"}

{includeCss file="library/dhtmlxtree/dhtmlXTree.css"}
{includeCss file="backend/Settings.css"}

{pageTitle}LiveCart Settings{/pageTitle}
{include file="layout/backend/header.tpl"}

<div id="settingsContainer" class="maxHeight h--50">
	<div id="settingsBrowser" class="treeBrowser">
	</div>

	<div id="settingsContent" class="maxHeight" style="border: 1px solid black; margin-left: 290px;">
	test
	</div>

</div>

<div id="activeSettingsPath"></div>


{literal}
<script type="text/javascript">
	var settings = new Backend.Settings({/literal}{$categories}{literal});
	settings.urls['edit'] = '{/literal}{link controller=backend.settings action=view}?id=_id_{literal}';
	settings.urls['save'] = '{/literal}{link controller=backend.settings action=save}?id=_id_{literal}';
</script>
{/literal}

{include file="layout/backend/footer.tpl"}