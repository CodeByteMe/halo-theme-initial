<#include "header.ftl">
<@header title="${post.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!},${tagWords!}" description="${post.summary!}" />
<div id="main">
    <div class="breadcrumbs">
        <a href="${context!}">首页</a> &raquo; ${post.title!}
    </div>
    <article class="post<?php if ($this->options->PjaxOption && $this->hidden): ?> protected<?php endif; ?>">
        <h1 class="post-title"><a href="${context!}/archives/${post.url!}">${post.title!}</a></h1>
        <ul class="post-meta">
            <li>${post.createTime?string('yyyy-MM-dd')}</li>
            <li>
                <#if categories?? && categories?size gt 0>
                    <#list categories as category>
                        ${category.name!}&nbsp;
                    </#list>
                <#else>
                    未分类
                </#if>
            </li>
            <li>
<#--                <a href="${context!}/archives/${post.url!}#comments">-->
<#--                    <#if comments?? && comments.getTotalElements gt 0>-->
<#--                        ${comments.getTotalElements} 条评论-->
<#--                    <#else>-->
<#--                        暂无评论-->
<#--                    </#if>-->
<#--                </a>-->
            </li>
            <li>
                <#if post.visits gt 0>
                    ${post.visits?c} 次阅读
                <#else>
                    暂无阅读
                </#if>
            </li>
        </ul>
        <div class="post-content">
            ${post.formatContent!}
        </div>
        <#if settings.WeChat?? || settings.Alipay??>
        <p class="rewards">打赏:
            <#if settings.WeChat?? && settings.WeChat!=''>
                <a><img src="${settings.WeChat}" alt="微信收款二维码"/>微信</a>
            </#if>
            &nbsp;
            <#if settings.Alipay?? && settings.Alipay!=''>
                <a><img src="${settings.Alipay}" alt="支付宝收款二维码"/>支付宝</a>
            </#if>
        </p>
        </#if>
        <p class="tags">标签:
            <#if tags?? && tags?size gt 0>
                <#list tags as tag>
                    <a href="${context!}/tags/${tag.slugName}">${tag.name}</a>&nbsp;
                </#list>
            <#else>
                无
            </#if>
        </p>
        <p class="license">
            ${settings.LicenseInfo!'本作品采用 <a rel="license nofollow" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">知识共享署名-相同方式共享 4.0 国际许可协议</a> 进行许可。'}
        </p>
    </article>
    <#include "comments.ftl">
    <@comment post=post type="post" />
    <ul class="post-near">
        <li>上一篇:
            <#if prePost??>
                <a href="${context!}/archives/${prePost.url}" title="${prePost.title}">${prePost.title}</a>
            <#else>
                没有了
            </#if>
        </li>
        <li>下一篇:
            <#if nextPost??>
                <a href="${context!}/archives/${nextPost.url}" title="${nextPost.title}">${nextPost.title}</a>
            <#else>
                没有了
            </#if>
        </li>
    </ul>
</div>
<#include "sidebar.ftl">
<#include "footer.ftl">