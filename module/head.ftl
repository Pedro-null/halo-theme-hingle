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

        <#--代码高亮库-->
        <#--官方库的语言种类目前有189种
        1c、abnf、accesslog、actionscript、ada、angelscript、apache、applescript、arcade、arduino、armasm、asciidoc、
        aspectj、autohotkey、autoit、avrasm、awk、axapta、bash、basic、bnf、brainfuck、c-like、c、cal、capnproto、ceylon、
        clean、clojure-repl、clojure、cmake、coffeescript、coq、cos、cpp、crmsh、crystal、csharp、csp、css、d、dart、delphi、
        diff、django、dns、dockerfile、dos、dsconfig、dts、dust、ebnf、elixir、elm、erb、erlang-repl、erlang、excel、fix、flix、
        fortran、fsharp、gams、gauss、gcode、gherkin、glsl、gml、go、golo、gradle、groovy、haml、handlebars、haskell、haxe、hsp、
        htmlbars、http、hy、inform7、ini、irpf90、isbl、java、javascript、jboss-cli、json、julia-repl、julia、kotlin、lasso、latex、
        ldif、leaf、less、lisp、livecodeserver、livescript、llvm、lsl、lua、makefile、markdown、mathematica、matlab、maxima、mel、
        mercury、mipsasm、mizar、mojolicious、monkey、moonscript、n1ql、nginx、nim、nix、nsis、objectivec、ocaml、openscad、oxygene、
        parser3、perl、pf、pgsql、php-template、php、plaintext、pony、powershell、processing、profile、prolog、properties、protobuf、
        puppet、purebasic、python-repl、python、q、qml、r、reasonml、rib、roboconf、routeros、rsl、ruby、ruleslanguage、rust、sas、scala、
        scheme、scilab、scss、shell、smali、smalltalk、sml、sqf、sql、stan、stata、step21、stylus、subunit、swift、taggerscript、tap、tcl、
        thrift、tp、twig、typescript、vala、vbnet、vbscript-html、vbscript、verilog、vhdl、vim、x86asm、xl、xml、xquery、yaml、zephir
        -->
        <script src="https://cdn.staticfile.org/highlight.js/10.0.0/highlight.min.js"></script>

        <#--  KaTex 公式渲染  -->
        <#if settings.KaTex_plugin!false>
            <link href="${theme_base!}/source/plugins/katex/dist/katex.min.css?v=${theme.version!}" rel="stylesheet">
            <script src="${theme_base!}/source/plugins/katex/dist/katex.min.js?v=${theme.version!}"></script>
        </#if>
    
    </#if>    
    
</head>
