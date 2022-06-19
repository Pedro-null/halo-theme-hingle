<#include "module/macro.ftl">
<@layout title="相册 - ${blog_title!}">
<#--  搞个瀑布流  -->

<head>
    <link rel="stylesheet" href="${theme_base!}/source/css/photos_style.css">
</head>

<main>
    <div class="wrap min">
        <section class="page-title">
            <h1>相册</h1>
        </section>

        <section class="post-content">
            <#--  <@photoTag method="listTeams">
                <section>
                    <#list teams as team>
                        <#if (team.team)?? && team.team != "">
                            <h2 class="photos-team">${team.team}</h2>
                        </#if>
                        <#list team.photos as photo>
                            <div class="item">
                                <img src="${photo.url!}" alt="${photo.description!}">
                            </div>
                        </#list>
                    </#list>
                </section>
            </@photoTag>  -->

            <#assign lastTeam = dataNull!>
            <#list photos.content?sort_by('team') as photo>
                <#if lastTeam != photo.team >
                    <h2 class="photos-team">${photo.team}</h2>
                </#if>
                <#assign lastTeam = photo.team >
                <div class="item">
                    <img src="${photo.url}" alt="${photo.description}"/>
                </div>
            </#list>
        </section>

        <#--  分页  -->
        <section class="page-navigator">
            <#if photos.totalPages gt 1>
                <@paginationTag method="photos" page="${photos.number}" total="${photos.totalPages}" display="3">
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

