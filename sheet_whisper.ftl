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
            ${sheet.formatContent!}
        </div>
    </article>
    <div id="comments" class="whisper">
        <ol class="comment-list">
            <li id="li-comment-1301" class=" whisper-body comment-by-author">
                <div id="comment-1301">
                    <div class="comment-author">
                        <img class="avatar"
                             src="https://cdn.ryanc.cc/img/blog/thumbnails/d233b4c9312f1d4e19b962009a9f2635.gif"
                             alt="JIElive" width="32" height="32">
                        <cite>
                            <a href="https://www.offodd.com" rel="external nofollow">Ryan Wang</a>
                        </cite>
                    </div>
                    <div class="comment-content">
                        <p>啊，好烦！</p></div>
                    <div class="comment-meta">
                        <time>2月20日</time>
                        <a class="whisper-reply" onclick="return TypechoComment.reply('comment-1301', 1301);">评论</a>
                    </div>
                </div>
                <div class="comment-children">
                    <ol class="comment-list">
                        <li id="li-comment-1427" class="comment-body comment-parent">
                            <div id="comment-1427" class="comment-whisper">
                                <div class="comment-author comment-content">
                                    <img class="avatar"
                                         src="https://cdn.v2ex.com/gravatar/d0516769034fd444ad76504ee7d72aba?s=16&amp;r=G&amp;d="
                                         alt="JH" width="16" height="16"><cite><a href="http://www.88cca.com"
                                                                                  rel="external nofollow"
                                                                                  target="_blank">JH</a>: </cite>
                                    <span class="whisper-reply"
                                          onclick="return TypechoComment.reply('comment-1427', 1427);">添加友联,在链接页面 显示不出来.</span>
                                </div>
                            </div>
                        </li>
                        <li id="li-comment-1306" class="comment-body comment-parent">
                            <div id="comment-1306" class="comment-whisper">
                                <div class="comment-author comment-content">
                                    <img class="avatar"
                                         src="https://cdn.v2ex.com/gravatar/9924cdad2140a9f8570393bfebe411a8?s=16&amp;r=G&amp;d="
                                         alt="枂下" width="16" height="16"><cite><a href="https://black1ce.com"
                                                                                  rel="external nofollow"
                                                                                  target="_blank">枂下</a>: </cite>
                                    <span class="whisper-reply"
                                          onclick="return TypechoComment.reply('comment-1306', 1306);">好久不见大佬</span>
                                </div>
                            </div>
                            <div class="comment-children">
                                <ol class="comment-list">
                                    <li id="li-comment-1311" class="comment-body comment-child comment-by-author">
                                        <div id="comment-1311" class="comment-whisper">
                                            <div class="comment-author comment-content">
                                                <img class="avatar"
                                                     src="https://cdn.v2ex.com/gravatar/6b09717c8ecadf889e270cd87bcd55b0?s=16&amp;r=G&amp;d="
                                                     alt="JIElive" width="16" height="16"><cite><a
                                                            href="https://www.offodd.com" rel="external nofollow">JIElive</a>:
                                                </cite>
                                                <span class="whisper-reply"
                                                      onclick="return TypechoComment.reply('comment-1311', 1311);"><b
                                                            class="comment-at">@枂下</b>新年好🤣</span>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </li>
                    </ol>
                </div>
            </li>
        </ol>
        <ol class="page-navigator">
            <li class="current"><a href="${context!}/s/${sheet.url!}/comment-page-1#comments">1</a></li>
            <li><span>..</span></li>
            <li><a href="${context!}/s/${sheet.url!}/comment-page-3#comments">3</a></li>
            <li class="next"><a href="${context!}/s/${sheet.url!}/comment-page-2#comments">下一页</a></li>
        </ol>
        <div id="respond-page-65" class="respond">
            <div class="cancel-comment-reply">
                <a id="cancel-comment-reply-link" href="${context!}/s/${sheet.url!}#respond-page-65"
                   rel="nofollow" style="display:none" onclick="return TypechoComment.cancelReply();">取消评论</a></div>
            <h3 id="response">发表评论</h3>
            <form method="post" id="comment-form" class="comment-form clearfix">
                <p class="textarea">
                    <textarea name="text" id="textarea" placeholder="说点什么..." required=""></textarea>
                </p>
                <p class="textbutton">
                    <input type="text" name="author" id="author" class="text" placeholder="称呼 *" value="" required="">
                    <input type="email" name="mail" id="mail" class="text" placeholder="邮箱 *" value="" required="">
                    <input type="url" name="url" id="url" class="text" placeholder="http://" value="">
                    <button type="submit" class="submit">提交</button>
                </p>
            </form>
        </div>
    </div>
</div>
<#include "sidebar.ftl">
<#include "footer.ftl">