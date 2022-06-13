<#--  <#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
    <h1>${post.title!}</h1>
    <article>
        ${post.formatContent!}
    </article>
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>  -->
<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
<main>
    <div class="wrap min">
        <section class="post-title">
            <h2>${post.title!}</h2>
            <div class="post-meta">
                <time class="date">${post.createTime?string["yyyy.MM.dd"]!}</time>

                <#if (post.categories)?? && post.categories?size !=0>
                    <span class="category">
                        <#list post.categories as categorie>
                            <a href="${categorie.fullPath!}">${categorie.name!}</a>
                        </#list>
                    </span>
                </#if>

                <span class="view">${post.visits!}</span>

            </div>
        </section>
        <article class="post-content">
        <#--  <% if (moment().unix() - page.date.unix() >= 15552000) { %>
            <blockquote>这篇文章上次修改于 <%= Math.ceil((moment().unix() - page.date.unix()) / 86400) %> 天前，可能其部分内容已经发生变化，如有疑问可询问作者。</blockquote>
        <% } %>  -->
            ${post.formatContent!}
        </article>
        <section class="post-near">
            <ul>

                <#if prevPost??>
                    <li>上一篇: <a href="${prevPost.fullPath!}">${prevPost.title!}</a></li>
                <#else>
                    <li>上一篇: 看完啦 (つд⊂)</li>
                </#if>

                <#if nextPost??>
                    <li>下一篇: <a href="${nextPost.fullPath!}">${nextPost.title!}</a></li>
                <#else>
                    <li>下一篇: 看完啦 (つд⊂)</li>
                </#if>
            </ul>
        </section>
        <#if (post.tags)?? && post.tags?size !=0>
            <section class="post-tags">
                <#list post.tags as tags>
                    <a class="-none-link" href="${tags.fullPath!}" rel="tags">${tags.name!}</a>
                </#list>
            </section>
        </#if>

        <#--  作者寄语  -->
        <#if (settings.author_text)?? && settings.author_text?trim != ''>
                <section class="post-author">
                    <figure class="author-avatar">
                        <img src="${user.avatar!}" alt="${user.nickname!}" />
                    </figure>
                    <div class="author-info">
                        <h4>${user.nickname!}</h4>
                        <p>${settings.author_text!}></p>
                    </div>
                </section>
        </#if>

        <#include "module/comment.ftl">
        <@comment post=post type="post" />

    </div>
</main>
</@layout>
