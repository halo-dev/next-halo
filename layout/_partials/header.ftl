<div class="site-brand-wrapper">
  <div class="site-meta <#if (options.next_style_custom_logo_enable!'false')=='true'>custom-logo</#if>">
    <#if (options.next_style_custom_logo_enable!'false')=='true' && (settings.scheme!'Muse')=='Muse'>
      <div class="site-meta-headline">
        <a>
          <img class="custom-logo-image" src="${options.next_style_custom_logo_image!}"
               alt="${options.blog_title!}"/>
        </a>
      </div>
    </#if>

    <div class="custom-logo-site-title">
      <a href="${options.blog_url!}/"  class="brand" rel="start">
        <span class="logo-line-before"><i></i></span>
        <span class="site-title">${options.blog_title!'NexT Theme'}</span>
        <span class="logo-line-after"><i></i></span>
      </a>
    </div>
      <#if settings.seo!false>
        <h1 class="site-subtitle" itemprop="description">${options.next_general_subtitle!}</h1>
      <#else>
        <p class="site-subtitle">${options.next_general_subtitle!}</p>
      </#if>
  </div>

  <div class="site-nav-toggle">
    <button>
      <span class="btn-bar"></span>
      <span class="btn-bar"></span>
      <span class="btn-bar"></span>
    </button>
  </div>
</div>

<nav class="site-nav">
    <ul id="menu" class="menu">
      <@menuTag method="list">
      <#if menus?? && menus?size gt 0>
          <#list menus?sort_by('priority') as menu>
            <li class="menu-item menu-item-${menu.url!}">
              <a href="${menu.url!}" rel="section">
                <#if (menu.icon!)!=''>
                  <i class="menu-item-icon fa fa-fw fa-${menu.icon!}"></i> <br />
                </#if>
                ${menu.name!}
              </a>
            </li>
          </#list>
      </#if>
      </@menuTag>
        <#if (options.next_search_local_search_enable!'false')=='true'>
        <li class="menu-item menu-item-search">
            <a href="javascript:;" class="popup-trigger">
            <i class="menu-item-icon fa fa-search fa-fw"></i> <br />
            搜索
          </a>
        </li>
        </#if>
    </ul>

<#if (options.next_search_local_search_enable!'false')=='true'>
    <div class="site-search">
      <#include "search.ftl">
    </div>
</#if>
</nav>

<#include "../_custom/header.ftl">
