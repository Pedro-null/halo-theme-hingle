<footer>
    <div class="buttons">
        <a class="to-top" href="#"></a>
    </div>
    <div class="wrap min">
        <#--  <section class="widget">
            <div class="row">
                <div class="col-m-4">
                    <h3 class="title-recent">最新文章：</h3>
                    <ul class="post-list">
                    <@postTag method="latest" top="5">
                        <#list posts as post>
                        <li>
                            <a class="post-list-link" href="${post.fullPath!}">${post.title!}</a>
                        </li>
                        </#list>
                    </@postTag>
                </div>
                <div class="col-m-4">
                    <h3 class="title-date">时光机：</h3>
                    <ul class="archive-list"> 
                        <@postTag method="archiveMonth">
                        <#list archives as archive>
                            <h1>${archive.year?c}-${archive.month?c}</h1>
                            <ul>
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li class="archive-list-item">
                                    <a class="archive-list-link" href="${post.fullPath!}">${post.title!}</a>
                                    </li>
                                </#list>
                            </ul>
                        </#list>
                        </@postTag>
                    </ul>
                </div>
                <div class="col-m-4">
                    <h3 class="title-tags">标签云：</h3>
                    <@tagTag method="count">
                        <span>${count!0}</span>
                    </@tagTag>
                </div>
            </div>
        </section>  -->
        <section class="sub-footer">
            <div align="left">
                <div align="left">${blog_title!}</div>
                <div align="left">© <span id="timeyear"></span> ${user.nickname!} <a href="https://beian.miit.gov.cn/" target="_blank">${settings.icp!}</a></div>
                <div align="left">Powered by <a href="https://halo.run/" target="_blank">Halo</a>. Theme <a href="https://github.com/daifiyum/halo-MaterialYour" target="_blank">Hingle</a> by <a href="https://www.pedronull.xyz/" target="_blank">pedronull</a>.</div>
            </div>

        </section>
    </div>
</footer>

<script src="${theme_base!}/source/static/kico.js"></script>
<script src="${theme_base!}/source/static/hingle.js"></script>
<script> 
    let jsonstr = JSON.stringify({night: ${settings.night?c}, copyright: ${settings.copyright?c}});
    var hingle = new Paul_Hingle(jsonstr);
</script> 
