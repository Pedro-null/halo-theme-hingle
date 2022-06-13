<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!}">
    <main>
        <div class="wrap min">
            <article class="post-content">
                ${sheet.formatContent!}
            </article>
            <#include "module/comment.ftl">
            <@comment post=sheet type="sheet" />
        </div>
    </main>
</@layout>
