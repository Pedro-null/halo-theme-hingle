<#include "module/macro.ftl">
<@layout title="标签列表 - ${blog_title!}">
    <main>
        <div class="wrap min">
            <section class="page-title">
                <h1>标签</h1>
                <#--  <h1>"${sheet.title!}"</h1>
                <span>${sheet.description!}</span>  -->
            </section>
            
            <section class="post-content">
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <li><a href="${tag.fullPath!}">${tag.name}</a></li>
                        </#list>
                    </#if>
                </@tagTag>
            </section>
        </div>
    </main>
</@layout>
