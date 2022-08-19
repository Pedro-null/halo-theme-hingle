<#include "module/macro.ftl">
<@layout title="${blog_title!}">

<main>
    <div class="wrap min">
        <section class="home-title">
            <h1>${blog_title!}</h1>
            <span>${user.description!}</span>
            <#--  <%- partial("_partial/social") %>  -->
            <#include "module/social.ftl">
        </section>

        <#--  文章列表  -->
        <section class="home-posts">
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
                        
                        <span class="comments">${post.commentCount!} ℃</span>

                    </div>
                </div>
            </#list>
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
