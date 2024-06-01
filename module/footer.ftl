<script>
    if (document.querySelector("halo-comment")){
        let comment_box = document.querySelector("halo-comment").shadowRoot.querySelector("#halo-comment");

        if(document.cookie.indexOf("night=true") !== -1){
            comment_box.classList.remove("light");
            comment_box.classList.add("dark");
        }
        else{
            comment_box.classList.remove("dark");
            comment_box.classList.add("light");
        }
    };
</script>

<#if is_post??>
    <script>
        var thisCodes = new Set();
        var codes = document.querySelectorAll("pre > code");
        for (var i = 0, len = codes.length; i < len; i++) {
            thisCodes.add(codes[i].className.slice(9));  //language-python
        }
        console.log(thisCodes);

        if (thisCodes.size) {
            var src = 'https://cdn.staticfile.org/highlight.js/10.0.0/highlight.min.js';
            console.log(src);
            var s = document.createElement('script');
            s.src = src;
            document.head.appendChild(s);

            thisCodes.forEach((i) => {
                src = 'https://cdn.staticfile.org/highlight.js/10.0.0/languages/' + i + '.min.js';
                console.log(src);
                s = document.createElement('script');
                s.src = src;
                document.head.appendChild(s);
            });

            codes.forEach((i) => {
                hljs.highlightBlock(i);
            });
        }
    </script>
</#if> 
<footer>
    <style>
        .mdui-img-circle {
            border-radius: 50%;
            }
    </style>
    <div class="buttons">
        <a class="to-top" href="#"></a>
    </div>
    <div class="wrap min">
        <section class="sub-footer">
            <div align="left">
                <img class="mdui-img-circle" height="24" width="24" src="${blog_logo!}">
                <a>${blog_title!}</a>
                <div>© <span id="timeyear">${.now?string('yyyy')}</span> ${user.nickname!} <a href="https://beian.miit.gov.cn/" target="_blank">${settings.icp!}</a></div>
                <div>Powered by <a href="https://halo.run/" target="_blank">Halo</a>. Theme <a href="https://github.com/Pedro-null/halo-theme-Hingle" target="_blank">Hingle</a> by <a href="https://www.pedronull.xyz/" target="_blank">pedronull</a>.</div>
            </div>

        </section>
    </div>
</footer>

<script src="${theme_base!}/source/js/kico.js?v=${theme.version!}"></script>
<script src="${theme_base!}/source/js/hingle.js?v=${theme.version!}"></script>
<script> 
    let config = JSON.stringify({night: ${settings.night?c}, copyright: ${settings.copyright?c}});
    var hingle = new Paul_Hingle(config);
</script> 
