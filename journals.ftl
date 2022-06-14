<#include "module/macro.ftl">
<@layout title="说说 - ${blog_title!}">
<main>
    <div class="wrap min">
        <section class="home-title">
            <h1>"说说"</h1>
            <#--  <span>${category.description!}</span>  -->
        </section>

        <#--  文章列表  -->

        <section class="home-posts">
            <#list journals.content as journal>
                <div class="post-item"> 
                    <div class="post-meta">
                        <time class="date">${journal.createTime?string["yyyy.MM.dd HH:mm:ss"]!}</time>                               
                        <span class="comments">${journal.commentCount!} ℃</span>
                    </div>
                    <p> ${journal.content!} </p>
                </div>
            </#list>
        </section>

        <#--  分页  -->
        <section class="page-navigator">
            <#if journals.totalPages gt 1>
                <@paginationTag method="journals" page="${posts.number}" total="${posts.totalPages}" display="3">
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
            </#if>
        </section>
    </div>
</main>
</@layout>