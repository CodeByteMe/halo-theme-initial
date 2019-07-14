<#import "funs.ftl" as fun>
<div id="secondary">
    <#if settings.ShowWhisper!true>
    <section class="widget">
        <h3 class="widget-title"><?php echo FindContents('page-whisper.php') ? FindContents('page-whisper.php', 'commentsNum', 'd')[0]['title'] : '轻语' ?></h3>
        <ul class="widget-list whisper">
            <?php Whisper(1); ?>
            <?php if ($this->user->pass('editor', true) && (!FindContents('page-whisper.php') || isset(FindContents('page-whisper.php')[1]))): ?>
            <li class="notice">
                <b>仅管理员可见: </b><br><?php echo FindContents('page-whisper.php') ? '发现多个"轻语"模板页面，已自动选取内容最多的页面作为展示，请删除多余模板页面。' : '未找到"轻语"模板页面，请检查是否创建模板页面。' ?>
            </li>
            <?php endif; ?>
        </ul>
    </section>
    </#if>
    <#if settings.ShowHotPosts!true>
    <section class="widget">
        <h3 class="widget-title">热门文章</h3>
        <ul class="widget-list">
            <?php Contents_Post_Initial($this->options->postsListSize, 'commentsNum'); ?>
        </ul>
    </section>
    </#if>
    <#if settings.ShowRecentPosts!true>
    <section class="widget">
        <h3 class="widget-title">最新文章</h3>
        <ul class="widget-list">
<#--            <?php Contents_Post_Initial($this->options->postsListSize); ?>-->
            <@fun.latestPost size="10" />
        </ul>
    </section>
    </#if>
    <#if settings.ShowRecentComments!true>
    <section class="widget">
        <h3 class="widget-title">最近回复</h3>
        <ul class="widget-list">
<#--            <?php Contents_Comments_Initial($this->options->commentsListSize, in_array('IgnoreAuthor', $this->options->sidebarBlock) ? 1 : ''); ?>-->
            <@fun.latestComment size="10" />
        </ul>
    </section>
    </#if>
    <#if settings.ShowCategory!true>
    <section class="widget">
        <h3 class="widget-title">分类</h3>
        <ul class="widget-tile">
            <@categoryTag method="list">
                <#if categories?? && categories?size gt 0>
                    <#list categories as category>
                        <li><a href="${context!}/categories/${category.slugName!}">${category.name!}</a></li>
                    </#list>
                <#else>
                    <li>暂无分类</li>
                </#if>
            </@categoryTag>
        </ul>
    </section>
    </#if>
    <#if settings.ShowTag!true>
    <section class="widget">
        <h3 class="widget-title">标签</h3>
        <ul class="widget-tile">
            <@tagTag method="list">
                <#if tags?? && tags?size gt 0>
                    <#list tags as tag>
                        <li><a href="${context!}/tags/${tag.slugName!}">${tag.name!}</a></li>
                    </#list>
                <#else>
                    <li>暂无标签</li>
                </#if>
            </@tagTag>
        </ul>
    </section>
    </#if>
    <#if settings.ShowArchive!true>
    <section class="widget">
        <h3 class="widget-title">归档</h3>
        <ul class="widget-list">
            <?php $this->widget('Widget_Contents_Post_Date', 'type=month&format=Y 年 n 月')
            ->parse('<li><a href="{permalink}">{date}</a></li>'); ?>
        </ul>
    </section>
    </#if>
    <#if settings.ShowLinks!true>
    <section class="widget">
        <h3 class="widget-title">链接</h3>
        <ul class="widget-tile">
            <?php Links($this->options->IndexLinksSort); ?>
            <?php if (FindContents('page-links.php', 'order', 'a', 1)): ?>
            <li class="more">
                <a href="<?php echo FindContents('page-links.php', 'order', 'a', 1)[0]['permalink']; ?>">查看更多...</a>
            </li>
            <?php endif; ?>
        </ul>
    </section>
    </#if>
    <#if settings.ShowOther!true>
    <section class="widget">
        <h3 class="widget-title">其它</h3>
        <ul class="widget-list">
            <li><a href="${context!}/atom.xml" target="_blank">文章 RSS</a></li>
        </ul>
    </section>
    </#if>
</div>