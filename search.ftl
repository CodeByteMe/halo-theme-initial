<#include "header.ftl">
<@header title="包含关键字 ${keyword!} 的文章 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
    <div id="main">
        <div class="breadcrumbs"><a href="${context!}">首页</a>
            &raquo; 包含关键字 ${keyword!} 的文章</div>
        <#if posts?? && posts.getTotalElements() gt 0>
            <#list posts.content as post>
                <article class="post">
                    <h2 class="post-title"><a href="${context!}/archives/${post.url!}">${post.title!}</a></h2>
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
                            <#if post.commentCount gt 0>
                                ${post.commentCount} 条评论
                            <#else>
                                暂无评论
                            </#if>
                        </li>
                    </ul>
                    <div class="post-content">
                        <#if post.thumbnail?? && post.thumbnail!='' && settings.ShowThumbnail!false>
                        <p class="thumb"><img src="${post.thumbnail!}"></p>
                        </#if>
                        <p>${post.summary!}</p>
                        <p class="more"><a href="${context!}/archives/${post.url!}" title="${post.title!}">- 阅读全文 -</a></p>
                    </div>
                </article>
            </#list>
        <#else>
            <article class="post">
                <h2 class="post-title">没有找到内容</h2>
            </article>
        </#if>
        <?php $this->pageNav('上一页', $this->options->AjaxLoad ? '查看更多' : '下一页', 0, '..', $this->options->AjaxLoad ? array('wrapClass' => 'page-navigator ajaxload') : ''); ?>
    </div>
<#include "sidebar.ftl">
<#include "footer.ftl">