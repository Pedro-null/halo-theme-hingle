<#include "module/macro.ftl">
<@layout title="${category.name} - ${blog_title!}">
<main>
    <div class="wrap min">
        <section class="home-title">
            <h1>"${category.name}"</h1>
            <span>${category.description!}</span>
        </section>

        <#--  文章列表  -->

        <section class="home-posts">
            <#list posts.content as post>
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
                <@paginationTag method="categoryPosts" slug="${category.slug!}" page="${posts.number}" total="${posts.totalPages}" display="3">
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
