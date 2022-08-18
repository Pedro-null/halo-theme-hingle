<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">

<head>
    <link rel="stylesheet" href="${theme_base!}/source/css/archives.css">
</head>

<main>
    <#--  <style>
        .time-title:before{
            content: "#";
            color: #6f9fc7;
            color: var(--blue);
            margin-right: .5em;
        }

        h1.time-title{                
            margin-bottom: 1em;
            transition: border 0.3s;
            border-bottom: 1px solid #ddd;
            border-color: var(--border);
            animation: fade-in-bottom .3s both;
            -webkit-animation: fade-in-bottom .3s both;
        }
    </style>  -->
    <div class="wrap min">
        <#--  <section class="home-posts">
                <@postTag method="archiveMonth">
                <#list archives as archive>
                <h1 class="time-title">${archive.year?c}-${archive.month?c}</h1>                   
                    <#list archive.posts as post>
                        <div class="post-item">
                            <h2>
                                <a href="${post.fullPath!}">${post.title}</a>
                            </h2>
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
                </#list>
            </@postTag>                   
        </section>  -->

        <div class="post-archive">
            <@postTag method="archiveYear">
                <#list archives as archive>
                    <h2>${archive.year?c}</h2>
                        <ul class="listing">
                            <#list archive.posts as post>
                                <li><span class="date">${post.createTime?string["yyyy年MM月dd日"]!}</span><a href="${post.fullPath!}" title="${post.title}">${post.title}</a></li>
                            </#list>
                        </ul>
                </#list>
            </@postTag>                        
        </div>

        <#--  2022年8月18日 修改 分页在此页面无作用  -->
        <#--  分页  -->
        <#--  <section class="page-navigator">
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
            </#if>
        </section>          -->
    </div>
</main>
</@layout>
