<#macro latestPost size>
    <@postTag method="latest" top="${size}">
        <#if posts?? && posts?size gt 0>
            <#list posts as post>
                <li><a href="${context!}/archives/${post.url!}">${post.title!}</a></li>
            </#list>
        <#else>
            <li>暂无文章</li>
        </#if>
    </@postTag>
</#macro>

<#macro latestComment size>
    <@commentTag method="latest" top="${size}">
        <#if comments?? && comments.getTotalElements() gt 0>
            <#list comments.content as comment>
                <li><a href="${context!}/archives/${comment.post.url!}#${comment.id}" title="来自: ${comment.post.title!}">${comment.author!}</a>: ${comment.content!}</li>
            </#list>
        <#else>
            <li>暂无回复</li>
        </#if>
    </@commentTag>
</#macro>