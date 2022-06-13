<div class="home-social">
    <#if (settings.weibo)?? && settings.weibo?trim != ''>
        <a href="${settings.weibo!}" title="微博">
            <i class="fa fa-weibo"></i>
        </a>            
    </#if>
    <#if (settings.Github)?? && settings.Github?trim != ''>
        <a href="${settings.Github!}" title="Github">
            <i class="fa fa-github"></i>
        </a>            
    </#if>
    <#if (settings.Home)?? && settings.Home?trim != ''>
        <a href="${settings.Home!}" title="首页">
            <i class="fa fa-home"></i>
        </a>            
    </#if>

</div>

