<#--
/**
 * Initial - 简约而不简单
 * 还原本质 勿忘初心
 *
 * @package Initial
 * @author JIElive
 * @version 2.4.3
 * @link http://www.offodd.com/
 */
-->
<#include "header.ftl">
<@header title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
    <div id="main">
<#--        <?php if ($this->_currentPage == 1 && !empty($this->options->ShowWhisper) && in_array('index', $this->options->ShowWhisper)): ?>-->
<#--            <article class="post whisper">-->
<#--                <div class="post-content">-->
<#--                    <?php Whisper(); ?>-->
<#--                    <?php if ($this->user->pass('editor', true) && (!FindContents('page-whisper.php') || isset(FindContents('page-whisper.php')[1]))): ?>-->
<#--                        <p class="notice">-->
<#--                            <b>仅管理员可见: </b><br><?php echo FindContents('page-whisper.php') ? '发现多个"轻语"模板页面，已自动选取内容最多的页面作为展示，请删除多余模板页面。' : '未找到"轻语"模板页面，请检查是否创建模板页面。' ?>-->
<#--                        </p>-->
<#--                    <?php endif; ?>-->
<#--                </div>-->
<#--            </article>-->
<#--        <?php endif; ?>-->
        <#if posts??>
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
                        <li>
                            <#if post.visits gt 0>
                                ${post.visits?c} 次阅读
                            <#else>
                                暂无阅读
                            </#if>
                        </li>
                    </ul>
                    <div class="post-content">
                        <#if post.thumbnail?? && post.thumbnail!='' && settings.ShowThumbnail!false>
                            <p class="thumb"><img src="${post.thumbnail}" /></p>
                        </#if>
                        <p>${post.summary!}</p>
                        <p class="more"><a href="${context!}/archives/${post.url!}" title="${post.title!}">- 阅读全文 -</a>
                        </p>
                    </div>
                </article>
            </#list>
        </#if>
        <?php $this->pageNav('上一页', $this->options->AjaxLoad ? '查看更多' : '下一页', 0, '..', $this->options->AjaxLoad ? array('wrapClass' => 'page-navigator ajaxload') : ''); ?>
    </div>
<#include "sidebar.ftl">
<#include "footer.ftl">