<#include "module/macro.ftl">
<@layout title="搜索结果：${keyword!} - ${blog_title!}">

<main>
    <div class="wrap min">
        <#--  <section class="home-title">
            <h1>${blog_title!}</h1>
            <span>${user.description!}</span>
            <#include "module/social.ftl">
        </section>  -->
        <section class="home-title">
            <h1>搜索结果：${keyword!}</h1>
        </section>

        <#--  结果列表  -->

        <section class="home-posts">
            <#if posts?? && posts.content?size gt 0>
                <#list posts.content as post>
                    <#--  <li>
                        <a href="${post.fullPath!}">${post.title}</a>
                    </li>  -->
                    <div class="post-item">
                        <h2>
                            <a href="${post.fullPath!}">${post.title}</a>
                        </h2>
                        <p> ${post.summary!} </p>
                        <div class="post-meta">
                            <time class="date">${post.createTime?string["yyyy.MM.dd"]!}</time>
                            <#if (post.categories)?? && post.categories?size !=0>
                                <#list post.categories as categorie>
                                    <span class="category">${categorie.name!}</span>
                                </#list>
                            </#if>
                            <#if (post.tags)?? && post.tags?size !=0>
                                <#list post.tags as tags>
                                    <span class="tags">${tags.name!}</span>
                                </#list>
                            </#if>
                        </div>
                    </div>
                </#list>
            <#else>
                <div class="post-item">
                    <h3 class="page-title">没有找到任何东西！</h3>
                </div>
            </#if>
        </section>

        <#--  分页  -->
        <section class="page-navigator">
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <#if pagination.hasPrev>
                        <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">«</a>
                    </#if>
                    <#list pagination.rainbowPages as number>
                        <#if number.isCurrent>
                            <span class="page-number current">${number.page!}</span>
                        <#else>
                            <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                        </#if>
                    </#list>
                    <#if pagination.hasNext>
                        <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">
                            »
                        </a>
                    </#if>
                </@paginationTag>
            <#--  <#else>
                <span>当前只有一页</span>  -->
            </#if>
        </section>
    </div>
</main>

</@layout>
