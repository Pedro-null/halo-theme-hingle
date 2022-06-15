<#include "module/macro.ftl">
<@layout title="分类列表 - ${blog_title!}">

<main>
        <div class="wrap min">
            <section class="page-title">
                <h1>分类</h1>
                <#--  <h1>"${sheet.title!}"</h1>
                <span>${sheet.description!}</span>  -->
            </section>
            
            <section class="post-content">
                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <#list categories as category>
                            <#if (category.description == "")>
                                <li><a href="${category.fullPath!}">${category.name}</a></li>
                            <#else>
                                <li><a href="${category.fullPath!}">${category.name}</a> - ${category.description!}</li>
                            </#if>
                        </#list>
                    </#if>
                </@categoryTag>
            </section>
        </div>
    </main>
</@layout>
