<#import "/common/macro/common_macro.ftl" as common>
<#macro header title,keywords,description>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <@common.globalHeader />
    <title>${title!}</title>
    <meta name="description" content="${description!}" />
    <meta name="keywords" content="${keywords!}" />
    <link rel="stylesheet" href="${static!}/style.min.css"/>
</head>
<body <#if settings.HeadFixed!false>class="head-fixed"</#if>>
<!--[if lt IE 9]>
<div class="browsehappy">当前网页可能 <strong>不支持</strong> 您正在使用的浏览器. 为了正常的访问, 请 <a href="https://browsehappy.com/">升级您的浏览器</a>.
</div>
<![endif]-->
<header id="header">
    <div class="container clearfix">
        <div class="site-name">
            <#if options.blog_logo??>
                <h1>
                    <a id="logo" href="${context!}">
                        <img src="${options.blog_logo!}" alt="${options.blog_title!}" title="${options.blog_title!}"/>
                    </a>
                </h1>
            <#else>
                <h1>
                    <a id="logo" href="${context!}">
                        <#if settings.customTitle??>
                            ${settings.customTitle!}
                        <#else>
                            ${options.blog_title!}
                        </#if>
                    </a>
                </h1>
            </#if>
        </div>
        <script>
            function Navswith() {
                document.getElementById("header").classList.toggle("on")
            }
        </script>
        <button id="nav-swith" onclick="Navswith()"><span></span></button>
        <div id="nav">
            <div id="site-search">
                <form id="search" method="post" action="${context!}/search">
                    <input type="text" id="s" name="keyword" class="text" placeholder="输入关键字搜索" required/>
                    <button type="submit"></button>
                </form>
            </div>
            <ul class="nav-menu">
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <li><a href="${menu.url!}" target="${menu.target!}">${menu.name!}</a></li>
                    </#list>
                </@menuTag>
            </ul>
        </div>
    </div>
</header>
<div id="body">
    <div class="container clearfix">
</#macro>