<#include "module/macro.ftl">
<@layout title="标签：${tag.name} - ${blog_title!}">

<main>
    <div class="wrap min">
        <section class="home-title">
            <h1>"${tag.name}"</h1>
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
                        <#if (post.tags)?? && post.tags?size !=0>
                            <#list post.tags as tag>
                                <span class="tags">${tag.name!}</span>
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
                <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3">
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
<#--  

    <h1>标签：${tag.name}</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <a href="${post.fullPath!}">${post.title}</a>
            </li>
        </#list>
    </ul>

    <h1>分页</h1>

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
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