<#include "module/macro.ftl">
<@layout title="链接 - ${blog_title!}">
    <main>
        <style>
            /* - 友链列表 */
            .link-friend{
                padding: 1em;
                display: block;
                margin-top: 2em;
                text-align: center;
                border-radius: 4px;
                background: #fff;
                background: var(--light-background);
                border: 1px solid #ddd;
                border-color: var(--border);
                transition: border-color .3s, background-color .3s;
            }
            .link-friend, .link-friend:hover{ color: inherit !important }

            .link-friend h4{ margin-bottom: .2em }

            .link-friend p{
                opacity: .5;
                font-size: .85em;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }

            .link-friend img{
                display: block;
                max-width: 5em;
                width: 80px;
                height: 80px;
                text-align: center;
                border-radius: 100%;
                margin: -3em auto .5em auto;
                transition: transform .3s, filter .3s;
            }
            .link-friend:hover img{ transform: rotate(1turn) }

            
            h2.links-team:before{
                content: "#";
                color: #6f9fc7;
                color: var(--blue);
                margin-right: .5em;
            }

            h2.links-team{                
                margin-top: 3rem;
                scroll-margin-top: 5em;
            }
        </style>
        <div class="wrap min">
            <section class="page-title">
                <h1>链接</h1>
                <#--  <h1>"${sheet.title!}"</h1>
                <span>${sheet.description!}</span>  -->
            </section>
            
            <section class="post-content">
                <@linkTag method="listTeams">
                    <section>
                        <#list teams as team>
                            <h2 class="links-team">${team.team}</h2>
                            <ul>
                            <div class="row">
                                <#list team.links as link>
                                    
                                    <div class="col-6 col-m-4">
                                        <a class="link-friend" href="${link.url}" target="_blank">
                                            <img src="${blog_logo!}">
                                            <h4>${link.name}</h4>
                                            <p>${link.description}</p>
                                        </a>
                                    </div>
                                </#list>
                                </div>
                            </ul>
                        </#list>
                    </section>
                </@linkTag>
            </section>
        </div>
    </main>
</@layout>
