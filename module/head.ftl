<head>
    <meta charset="UTF-8">
    <!-- <%- favicon_tag("static/img/icon.png") %> -->
    <link rel="icon" href="${blog_logo!}" sizes="192x192"/>

    <#--  <%- css("static/kico.css", "static/hingle.css") %>
    <%- css("https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome/css/font-awesome.min.css") %>  -->
    <link rel="stylesheet" href="${theme_base!}/source/static/kico.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/static/hingle.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome/css/font-awesome.min.css"/>

    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1"/>
    <#--  <meta property="og:site_name" content="<%= config.title %>">  -->
    <meta property="og:site_name" content="${blog_title!}">
    <#--  <meta property="og:title" content="<%= page.title %>"/>      -->
    <#--  <meta property="og:title" content="${sheet.title!}"/>  -->

    <#--  <% if (theme.background) { %>
    <style>body:before{ content: ''; background-image: url(<%- theme.background %>) }</style>
    <% } %>  -->
    <#if settings.background?? && settings.background != ''>
        <style>body:before{ content: ''; background-image: url(${settings.background!}) }</style>
    </#if>

    <#--文章界面需要引入的CSS-->
    <#if is_post??>
    <#--Github MarkDown的引入-->
        <link rel="stylesheet" href="${theme_base!}/source/css/github-markdown.css">
    <#--代码高亮用到的CSS-->
        <link href="${settings.code_css_url!'https://cdn.staticfile.org/highlight.js/9.18.1/styles/github.min.css'}"
                rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" integrity="sha256-Vzbj7sDDS/woiFS3uNKo8eIuni59rjyNGtXfstRzStA=" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/css/share.min.css" integrity="sha256-0EDwznjUTDEicOuZhOL03fpflUqzhkByvhwol8YGkp4=" crossorigin="anonymous">


        <#--代码高亮库-->
        <#--官方库的语言种类目前有185种
        1c、abnf、accesslog、actionscript、ada、angelscript、apache、applescript、arcade、arduino、armasm、
        asciidoc、aspectj、autohotkey、autoit、avrasm、awk、axapta、bash、basic、bnf、brainfuck、cal、capnproto、
        ceylon、clean、clojure-repl、clojure、cmake、coffeescript、coq、cos、cpp、crmsh、crystal、cs、csp、css、
        d、dart、delphi、diff、django、dns、dockerfile、dos、dsconfig、dts、dust、ebnf、elixir、elm、erb、erlang-repl、
        erlang、excel、fix、flix、fortran、fsharp、gams、gauss、gcode、gherkin、glsl、gml、go、golo、gradle、groovy、
        haml、handlebars、haskell、haxe、hsp、htmlbars、http、hy、inform7、ini、irpf90、isbl、java、javascript、
        jboss-cli、json、julia-repl、julia、kotlin、lasso、ldif、leaf、less、lisp、livecodeserver、livescript、
        llvm、lsl、lua、makefile、markdown、mathematica、matlab、maxima、mel、mercury、mipsasm、mizar、mojolicious、
        monkey、moonscript、n1ql、nginx、nimrod、nix、nsis、objectivec、ocaml、openscad、oxygene、parser3、perl、pf、
        pgsql、php、plaintext、pony、powershell、processing、profile、prolog、properties、protobuf、puppet、purebasic、
        python、q、qml、r、reasonml、rib、roboconf、routeros、rsl、ruby、ruleslanguage、rust、sas、scala、scheme、scilab、
        scss、shell、smali、smalltalk、sml、sqf、sql、stan、stata、step21、stylus、subunit、swift、taggerscript、tap、
        tcl、tex、thrift、tp、twig、typescript、vala、vbnet、vbscript-html、vbscript、verilog、vhdl、vim、x86asm、xl、
        xml、xquery、yaml、zephir
        -->
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/highlight.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/accesslog.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/actionscript.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/apache.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/aspectj.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/awk.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/bash.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/basic.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/coffeescript.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/cpp.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/css.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/dart.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/delphi.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/django.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/dns.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/dockerfile.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/dos.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/erlang-repl.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/erlang.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/go.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/gradle.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/groovy.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/http.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/ini.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/java.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/javascript.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/json.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/kotlin.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/less.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/lua.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/markdown.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/nginx.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/objectivec.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/perl.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/php.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/plaintext.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/powershell.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/properties.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/python.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/ruby.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/scala.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/scheme.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/scss.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/shell.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/smali.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/sql.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/swift.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/typescript.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/vbscript.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/vim.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/xml.min.js"></script>
        <script src="https://cdn.staticfile.org/highlight.js/9.18.1/languages/yaml.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>

        <script>
            //var displayReadProgress = <#if (settings.open_read_progress)??>${settings.open_read_progress?c}<#else>true</#if>;
            var displayLineNumber = <#if (settings.line_number)??>${settings.line_number?c}<#else>true</#if>;
            var enableCodeCopy = <#if (settings.code_copy)??>${settings.code_copy?c}<#else>true</#if>;
            var displayCodeType = <#if (settings.code_type)??>${settings.code_type?c}<#else>true</#if>;
            //var displayMobileCatalog = <#if (settings.mobile_catalog)??>${settings.mobile_catalog?c}<#else>true</#if>;
            //var linkOnBlackPage = <#if (settings.link_on_blank_page)??>${settings.link_on_blank_page?c}<#else>true</#if>;
            //var enableShare = <#if (settings.open_share)??>${settings.open_share?c}<#else>true</#if>;
            //var twitterAccountShare = `${settings.twitter_account_share!}`;
            //var postTitle = `${post.title!}`;
            //var blogTitle = `${blog_title!}`;
            //var blogUrl = `${blog_url!}`;
        </script>

         <script type="text/javascript" src="${theme_base!}/source/js/post.js"></script>
    
    </#if>    
    
</head>