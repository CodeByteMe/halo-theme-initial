<#--
/**
 * 轻语
 *
 * @package custom
 */
-->
<#include "header.ftl">
<@header title="轻语 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
<div id="main">
    <div class="breadcrumbs">
        <a href="${context!}/">首页</a> » 轻语
    </div>
    <article class="post">
        <h1 class="post-title"><a href="${context!}/whisper.html">轻语</a></h1>
        <div class="post-content">
            测试
        </div>
    </article>
    <div id="comments" class="whisper">
        <ol class="comment-list">
            <#list journals.content as journal>
                <li id="li-comment-${journal.id?c}" class=" whisper-body comment-by-author">
                    <div id="comment-${journal.id?c}">
                        <div class="comment-author">
                            <img class="avatar"
                                 src="${user.avatar!}"
                                 alt="${user.nickname!}" width="32" height="32">
                            <cite>
                                <a href="${context!}" rel="external nofollow">${user.nickname!}</a>
                            </cite>
                        </div>
                        <div class="comment-content">
                            <p>${journal.content!}</p>
                        </div>
                        <div class="comment-meta">
                            <time>${journal.createTime?string("yyyy年MM月hh日")}</time>
                            <a class="whisper-reply" onclick="">评论</a>
                        </div>
                    </div>
                    <div class="comment-children">
                        <ol class="comment-list">

                        </ol>
                    </div>
                </li>
            </#list>
        </ol>
    </div>
</div>
<#include "sidebar.ftl">
<#include "footer.ftl">