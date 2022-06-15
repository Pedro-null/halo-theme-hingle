<@menuTag method="list">
    <nav class="head-menu">
    <#--  ?sort_by('priority')：根据菜单的排序编号排序  -->
    <#list menus?sort_by('priority') as menu>    
        <#if (menu.url == (blog_url))>
            <a href="${blog_url!}">首页</a>            
        <#elseif (menu.url == (categories_url))>
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
        <#else>
            <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
        </#if>
              
    </#list>
    </nav> 
</@menuTag>