<#import "/common/macro/common_macro.ftl" as common>
<#macro header title,keywords,description>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <@common.globalHeader />
    <title>${title!}</title>
    <meta name="description" content="${description!}" />
    <meta name="keywords" content="${keywords!}" />
    <link rel="stylesheet" href="${static}/style.min.css"/>
</head>
<body <?php if ($this->options->HeadFixed): ?>class="head-fixed"<?php endif; ?>>
<!--[if lt IE 9]>
<div class="browsehappy">当前网页可能 <strong>不支持</strong> 您正在使用的浏览器. 为了正常的访问, 请 <a href="https://browsehappy.com/">升级您的浏览器</a>.
</div>
<![endif]-->
<header id="header">
    <div class="container clearfix">
        <div class="site-name">
            <#if options.blog_logo??>
                <h1>
                    <a id="logo" href="${context!}">
                        <img src="${options.blog_logo!}" alt="${options.blog_title!}" title="${options.blog_title!}"/>
                    </a>
                </h1>
            <#else>
                <h1>
                    <a id="logo" href="${context!}"><?php if ($this->options->customTitle): $this->options->customTitle(); else: $this->options->title(); endif; ?></a>
                </h1>
            </#if>
        </div>
        <script>
            function Navswith() {
                document.getElementById("header").classList.toggle("on")
            }
        </script>
        <button id="nav-swith" onclick="Navswith()"><span></span></button>
        <div id="nav">
            <div id="site-search">
                <form id="search" method="post" action="${context!}/search">
                    <input type="text" id="s" name="keyword" class="text" placeholder="输入关键字搜索" required/>
                    <button type="submit"></button>
                </form>
            </div>
            <ul class="nav-menu">
                <li><a href="${context!}">首页</a></li>
                <?php if (!empty($this->options->Navset) && in_array('ShowCategory', $this->options->Navset)): if (in_array('AggCategory', $this->options->Navset)): ?>
                    <li class="menu-parent">
                    <a><?php if ($this->options->CategoryText): $this->options->CategoryText(); else: ?>分类<?php endif; ?></a>
                    <ul>
                <?php endif;
                    $this->widget('Widget_Metas_Category_List')->to($categorys);
                    while ($categorys->next()):
                        if ($categorys->levels == 0):
                            $children = $categorys->getAllChildren($categorys->mid);
                            if (empty($children)):
                                ?>
                                <li><a href="<?php $categorys->permalink(); ?>"
                                       title="<?php $categorys->name(); ?>"><?php $categorys->name(); ?></a></li>
                            <?php else: ?>
                                <li class="menu-parent">
                                    <a href="<?php $categorys->permalink(); ?>"
                                       title="<?php $categorys->name(); ?>"><?php $categorys->name(); ?></a>
                                    <ul class="menu-child">
                                        <?php foreach ($children as $mid) {
                                            $child = $categorys->getCategory($mid); ?>
                                            <li><a href="<?php echo $child['permalink'] ?>"
                                                   title="<?php echo $child['name']; ?>"><?php echo $child['name']; ?></a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            <?php
                            endif;
                        endif;
                    endwhile;
                    ?>
                    <?php if (in_array('AggCategory', $this->options->Navset)): ?>
                        </ul>
                        </li>
                    <?php
                    endif;
                endif;
                if (!empty($this->options->Navset) && in_array('ShowPage', $this->options->Navset)):
                    if (in_array('AggPage', $this->options->Navset)):
                        ?>
                        <li class="menu-parent">
                        <a><?php if ($this->options->PageText): $this->options->PageText(); else: ?>其他<?php endif; ?></a>
                        <ul>
                    <?php
                    endif;
                    $this->widget('Widget_Contents_Page_List')->to($pages);
                    while ($pages->next()):
                        ?>
                        <li><a href="<?php $pages->permalink(); ?>"
                               title="<?php $pages->title(); ?>"><?php $pages->title(); ?></a></li>
                    <?php endwhile;
                    if (in_array('AggPage', $this->options->Navset)): ?>
                        </ul>
                        </li>
                    <?php endif;
                endif; ?>
            </ul>
        </div>
    </div>
</header>
<div id="body">
    <div class="container clearfix">
</#macro>