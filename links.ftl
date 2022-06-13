<#include "module/macro.ftl">
<@layout title="友情链接 - ${blog_title!}">
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
            text-align: center;
            border-radius: 100%;
            margin: -3em auto .5em auto;
            transition: transform .3s, filter .3s;
        }
        .link-friend:hover img{ transform: rotate(1turn) }
    </style>
    <div class="wrap min">
    <h1>友情链接</h1>
    <section class="home-posts">
        <@linkTag method="listTeams">
            
                <#list teams as team>
                    <h2>${team.team}</h2>
                    <ul>
                        <#list team.links as link>
                            <#--  <li>
                                <a href="${link.url}" target="_blank" rel="external">${link.name}</a>
                                <#if link.description!=''>
                                    – ${link.description}
                                </#if>
                            </li>  -->
                            <div class="row">
                            <div class="col-6 col-m-4">
                                <a class="link-friend" href="${link.url}" target="_blank">
                                    <img src="${blog_logo!}">
                                    <h4>${link.name}</h4>
                                    <p>${link.description}</p>
                                </a>
                            </div>
                            </div>
                            <#--  <li><a href="${link.url}">${link.name}</a>${link.description}</li>  -->
                        </#list>
                    </ul>
                </#list>
            
        </@linkTag>
    </section>
</@layout>
