<#include "header.ftl">
<@header title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${sheet.summary!}" />
    <div id="main">
        <div class="breadcrumbs">
            <a href="${context!}">首页</a> &raquo; ${sheet.title!}
        </div>
        <article class="post">
            <h1 class="post-title"><a href="${context!}/s/${sheet.url!}">${sheet.title!}</a></h1>
            <div class="post-content">
                ${sheet.formatContent!}
            </div>
        </article>
        <#include "comments.ftl">
        <@comment post=sheet type="sheet" />
    </div>
<#include "sidebar.ftl">
<#include "footer.ftl">