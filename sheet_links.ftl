<#--
/**
 * 链接
 *
 * @package custom
 */
-->
<#include "header.ftl">
<@header title="友情链接 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
    <div id="main">
        <?php if (!empty($this->options->Breadcrumbs) && in_array('Pageshow', $this->options->Breadcrumbs)): ?>
            <div class="breadcrumbs">
                <a href="${context!}">首页</a> &raquo; 友情链接
            </div>
        <?php endif; ?>
        <article class="post">
            <h1 class="post-title"><a href="<?php $this->permalink() ?>"><?php $this->title() ?></a></h1>
            <div class="post-content">
                <?php $this->content(); ?>
                <ul class="links">
                    <?php if ($this->options->InsideLinksIcon): ?>
                        <script>function erroricon(obj) {
                                var a = obj.parentNode, i = document.createElement("i");
                                i.appendChild(document.createTextNode("★"));
                                a.removeChild(obj);
                                a.insertBefore(i, a.childNodes[0])
                            }</script>
                    <?php endif; ?>
                    <?php Links($this->options->InsideLinksSort, $this->options->InsideLinksIcon ? 1 : 0); ?>
                </ul>
            </div>
        </article>
        <?php $this->need('comments.php'); ?>
    </div>
<#include "sidebar.ftl">
<#include "footer.ftl">