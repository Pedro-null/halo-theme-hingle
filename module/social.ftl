<div class="home-social">
    <#if (settings.Github)?? && settings.Github?trim != ''>
        <a href="${settings.Github!}" title="Github">
            <i class="fa fa-github"></i>
        </a>            
    </#if>
    <#if (settings.weibo)?? && settings.weibo?trim != ''>
        <a href="https://weibo.com/${settings.weibo!}" title="微博">
            <i class="fa fa-weibo"></i>
        </a>            
    </#if>
    <#if (settings.qq)?? && settings.qq?trim != ''>
        <a href="tencent://message/?uin=${settings.qq}&Site=&Menu=yes" title="QQ">
            <i class="fa fa-qq"></i>
        </a>            
    </#if>
    <#if (settings.telegram)?? && settings.telegram?trim != ''>
        <a href="https://t.me/${settings.telegram}" title="telegram">
            <i class="fa fa-telegram"></i>
        </a>            
    </#if>
    <#if (settings.twitter_account)?? && settings.twitter_account?trim != ''>
        <a href="https://twitter.com/${settings.twitter_account}" title="twitter">
            <i class="fa fa-twitter"></i>
        </a>            
    </#if>
    <#if (settings.facebook)?? && settings.facebook?trim != ''>
        <a href="https://www.facebook.com/${settings.facebook}" title="facebook">
            <i class="fa fa-facebook"></i>
        </a>            
    </#if>
    <#if (settings.instagram)?? && settings.instagram?trim != ''>
        <a href="https://www.instagram.com/${settings.instagram}" title="instagram">
            <i class="fa fa-instagram"></i>
        </a>            
    </#if>
    <#if (settings.email_address)?? && settings.email_address?trim != ''>
        <a href="mailto:${settings.email_address}" title="email">
            <i class="fa fa-envelope"></i>
        </a>            
    </#if>
    <#if (settings.RSS)?? && settings.RSS?c == 'true'>
        <a href="${rss_url!}" title="RSS">
            <i class="fa fa-rss"></i>
        </a>            
    </#if>

</div>

