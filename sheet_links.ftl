<#--
/**
 * 链接
 *
 * @package custom
 */
-->
<#include "header.ftl">
<@header title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
    <div id="main">
        <div class="breadcrumbs">
            <a href="${context!}">首页</a> &raquo; ${sheet.title!}
        </div>
        <article class="post">
            <h1 class="post-title"><a href="${context!}/s/${sheet.url!}">${sheet.title!}</a></h1>
            <div class="post-content">
                ${sheet.formatContent!}
                <ul class="links">
                    <#if settings.InsideLinksIcon!false>
                        <script>
                            function erroricon(obj) {
                                var a = obj.parentNode, i = document.createElement("i");
                                i.appendChild(document.createTextNode("★"));
                                a.removeChild(obj);
                                a.insertBefore(i, a.childNodes[0])
                            }
                        </script>
                    </#if>
                    <?php Links($this->options->InsideLinksSort, $this->options->InsideLinksIcon ? 1 : 0); ?>
                    <@linkTag method="list">
                        <#if links?? && links?size gt 0>
                            <#list links as link>
                                <li>
                                    <a href="${link.url!}" class="l_logo" title="${link.description!}" target="_blank">
                                        <img src="${link.url!}/favicon.ico" onerror="erroricon(this)"><span>${link.name!}</span>
                                    </a>
                                </li>
                            </#list>
                        </#if>
                    </@linkTag>
                </ul>
            </div>
        </article>
        <#include "comments.ftl">
        <@comment post=sheet type="sheet" />
    </div>
<#include "sidebar.ftl">
<#include "footer.ftl">