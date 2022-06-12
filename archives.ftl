<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">

<main>
    <div class="wrap min">
        <#--  <section class="home-title">  -->
            
                <section class="home-posts">
                <#list archives as archive>
                <h1 class="page-title">${archive.year?c}</h1>                   
                    <#list archive.posts as post>
                        <div class="post-item">
                            <h2>
                                <a href="${post.fullPath!}">${post.title}</a>
                            </h2>
                            <#--  文章摘要  -->
                            <#--  <p> ${post.summary!} </p>  -->
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
                    </#list>                   
                </section>
            
        <#--  </section>  -->

        <#--  分页  -->
        <section class="page-navigator">
            <#if posts.totalPages gt 1>
                <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
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

        <#--  <section class="page-navigator">
            <%- paginator({
                prev_text: "«",
                next_text: "»"
            }) %>
        </section>  -->
    </div>
</main>

    <#--  <h1>归档</h1>
    <ul>
        <#list archives as archive>
            <h2>${archive.year?c}</h2>
            <#list archive.posts as post>
                <li>
                    <a href="${post.fullPath!}">${post.title!}</a>
                </li>
            </#list>
        </#list>
    </ul>

    <h1>分页</h1>

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <li>
                        <a href="${pagination.prevPageFullPath!}">
                            上一页
                        </a>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li>
                        <#if number.isCurrent>
                            <span class="current">第 ${number.page!} 页</span>
                        <#else>
                            <a href="${number.fullPath!}">第 ${number.page!} 页</a>
                        </#if>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li>
                        <a href="${pagination.nextPageFullPath!}">
                            下一页
                        </a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    <#else>
        <span>当前只有一页</span>
    </#if>  -->
</@layout>