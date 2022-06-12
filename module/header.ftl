<header>
    <div class="head-title">
        <h4>${blog_title!}</h4>
    </div>
    <div class="head-action">
        <div class="toggle-btn"></div>
        <div class="light-btn"></div>
        <div class="search-btn"></div>
    </div>
    <form class="head-search" method="get" action="/search" role="search">
        <input type="text" name="keyword" placeholder="搜索什么？">
    </form> 

    <nav class="head-menu">
        <a href="${blog_url!}">首页</a>
        <div class="has-child">
            <a>分类</a>
            <div class="sub-menu">
                
                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <#list categories as category>
                            <a class="category-link" href="${category.fullPath!}">${category.name}</a>
                        </#list>
                    </#if>
                </@categoryTag>

            </div>
        </div>

        <#include "menu.ftl"/>

    </nav>

</header>
