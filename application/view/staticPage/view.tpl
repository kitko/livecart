{pageTitle}{$page.title_lang}{/pageTitle}

{include file="layout/frontend/header.tpl"}
{include file="layout/frontend/leftSide.tpl"}
{include file="layout/frontend/rightSide.tpl"}

<div id="content">
	<h1>{$page.title_lang}</h1>
	<div class="staticPageText">
        {$page.text_lang}
    </div>
</div>		

{include file="layout/frontend/footer.tpl"}