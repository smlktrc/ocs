{**
 * templates/paper/pdfInterstitial.tpl
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Interstitial page used to display a note about plugins
 * before sending browser directly to the PDF file
 *
 * $Id$
 *}
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- templates/paper/pdfInterstitial.tpl -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
	<title>{translate key="paper.pdf.title"}</title>

	{if $displayFavicon}<link rel="icon" href="{$faviconDir}/{$displayFavicon.uploadName|escape:"url"}" type="{$displayFavicon.mimeType|escape}" />{/if}

	<link rel="stylesheet" href="{$baseUrl}/lib/pkp/styles/common.css" type="text/css" />
	<link rel="stylesheet" href="{$baseUrl}/styles/common.css" type="text/css" />
	<link rel="stylesheet" href="{$baseUrl}/styles/paperView.css" type="text/css" />

	{foreach from=$stylesheets item=cssUrl}
		<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
	{/foreach}

	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/functions/general.js"></script>
	<meta http-equiv="refresh" content="2;URL={url op="viewFile" path=$paperId|to_array:$galley->getId()}"/>
	{$additionalHeadData}
</head>
<body>

<div id="container">
<div id="body">
<div id="main">
<div id="content">
		<h3>{translate key="paper.pdf.title"}</h3>

{url|assign:"url" op="download" path=$paperId|to_array:$galley->getId()}
<p>{translate key="paper.pdf.note" url=$url}</p>

{call_hook name="Templates::Paper::PdfInterstitial::PageFooter"}
</div>
</div>
</div>
</div>
</body>
</html>

