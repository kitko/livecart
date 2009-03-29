<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
	<meta name="Keywords" content="{$metaKeywords|escape}" />
	{assign var="defaultMeta" value='DEFAULT_META_DESCR'|config}
	<meta name="Description" content="{$metaDescription|@or:$defaultMeta|escape}" />

	<title>
		{if !$PAGE_TITLE}
			{capture assign="PAGE_TITLE"}
				{block BREADCRUMB_TITLE}
			{/capture}
		{/if}

		{if 'TITLE_FORMAT'|config == 'NAME_FIRST'}
			{'STORE_NAME'|config} {'TITLE_SEPARATOR'|config} {$PAGE_TITLE|@strip_tags}
		{else}
			{$PAGE_TITLE|@strip_tags} {'TITLE_SEPARATOR'|config} {'STORE_NAME'|config}
		{/if}
	</title>

	<base href="{baseUrl}"></base>
	{liveCustomization}

	{if 'FAVICON'|config}
		<link href="{'FAVICON'|config}" rel="shortcut icon" />
	{/if}

	<!-- Css includes -->
	{includeCss file="frontend/Frontend.css"}
	{includeCss file="backend/stat.css"}

	{if {isRTL}}
		{includeCss file="frontend/FrontendRTL.css"}
	{/if}

	{compiledCss glue=true nameMethod=hash}
	<!--[if IE]>
		<link href="stylesheet/frontend/FrontendIE.css" rel="Stylesheet" type="text/css"/>
		{if $ieCss}
			<link href="{$ieCss}" rel="Stylesheet" type="text/css"/>
		{/if}
	<![endif]-->

	<!-- JavaScript includes -->
	{* <script type="text/javascript" src="firebug/firebug.js"></script> *}
	{compiledJs glue=true nameMethod=hash}

	{*
	<!--[if lt IE 7]>
		<script src="javascript/library/iepngfix/iepngfix_tilebg.js" type="text/javascript"></script>
	<![endif]-->

	<!--[if lt IE 8]>
		<script src="javascript/library/ie7/IE8.js" type="text/javascript"></script>
	<![endif]-->
	*}
</head>

<body class="{$request.controller}Con {$request.controller}-{$request.action}{if ($request.requestLanguage == 'he') || ($request.requestLanguage == 'ar')} rtl{/if}{if $bodyClass} {$bodyClass}{/if}">
	{liveCustomization action="menu"}
	<div id="container" class="lang_{localeCode}">
		{block PAGE-TOP}
		{$ACTION_VIEW}
		{block PAGE-BOTTOM}
	</div>
	{block TRACKING}
	{liveCustomization action="lang"}
</body>

</html>