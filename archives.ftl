<#--
/**
 * 归档
 *
 * @package custom
 */
-->
<#include "header.ftl">
<@header title="归档 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
<div id="main">
    <div class="breadcrumbs">
        <a href="${context!}">首页</a> &raquo; 归档
    </div>
    <article class="post">
        <h1 class="post-title"><a href="${context!}/archives">归档</a></h1>
        <div id="archives">
            <@postTag method="archiveYear">
                <#list archives as archive>
                    <h3>${archive.year?c} 年</h3>
                    <ul>
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <li>${post.createTime?string("MM-dd")}：<a href="${context!}/archives/${post.url!}">${post.title!}</a></li>
                        </#list>
                    </ul>
                </#list>
            </@postTag>
        </div>
    </article>
</div>
<#include "sidebar.ftl">
<#include "footer.ftl">