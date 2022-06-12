<@menuTag method="list">
    <#--
        ?sort_by('priority')：根据菜单的排序编号排序
    -->
    <#list menus?sort_by('priority') as menu>
        <#if (menu.name != "首页")>
            <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
        </#if>               
    </#list>
</@menuTag>