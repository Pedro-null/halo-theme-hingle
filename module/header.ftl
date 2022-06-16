<header>

    <script>
        if(document.cookie.indexOf("night=true") !== -1){
            document.body.classList.add("dark-theme");
        }
        else{
            document.body.classList.remove("dark-theme");
        }
    </script>

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

    <#include "menu.ftl"/>

</header>
