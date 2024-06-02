<head>
    <meta charset="UTF-8">
    
    <link rel="icon" href="${blog_logo!}" sizes="192x192"/>

    <link rel="stylesheet" href="${theme_base!}/source/css/kico.css?v=${theme.version!}"/>
    <link rel="stylesheet" href="${theme_base!}/source/css/hingle.css?v=${theme.version!}"/>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1"/>
    <meta property="og:site_name" content="${blog_title!}">
    
    <#if settings.background?? && settings.background != ''>
        <style>body:before{ content: ''; background-image: url(${settings.background!}) }</style>
    </#if>

    <script>
        var isPost = false;
        //获取主题配置
        var ThemeConfig = {};
        ThemeConfig['night'] = ${settings.night?c};
        ThemeConfig['copyright'] = ${settings.copyright?c};
    </script>

    <#--文章界面需要引入的CSS、js-->
    <#if is_post??>

    <script>isPost = true;</script>
    
    <#--代码高亮用到的CSS-->
        <link href="https://cdn.staticfile.org/highlight.js/10.0.0/styles/${settings.code_css!'github.min.css'}" rel="stylesheet">

        <script src="https://cdn.staticfile.org/highlight.js/10.0.0/highlight.min.js"></script>

        <script>hljs.highlightAll();</script>

        <#--  KaTex 公式渲染  -->
        <#if settings.KaTex_plugin!false>
            <link href="${theme_base!}/source/plugins/katex/dist/katex.min.css?v=${theme.version!}" rel="stylesheet">
            <script src="${theme_base!}/source/plugins/katex/dist/katex.min.js?v=${theme.version!}"></script>
        </#if>
    
    </#if>    
    
</head>
