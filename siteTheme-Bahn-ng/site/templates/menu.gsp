<%
  // execute externalized script to get the menu
  new GroovyShell(getClass().getClassLoader(),
    new Binding([
      published_content: published_content,
      content: content,
      config: config
    ])
  ).evaluate(
    new File(config.sourceFolder,"groovy/menu.groovy").text
  )
%>
<nav class="js-navbar-scroll navbar navbar-expand navbar-dark flex-column flex-md-row td-navbar">
  <a class="navbar-brand" href="${content.rootpath}index.html">
      <span class="navbar-logo"></span><span
          class="font-weight-bold">${config.site_title}</span>
  </a>
  <div class="td-navbar-nav-scroll ml-auto mx-lg-auto" id="main_navbar">
    <ul class="navbar-nav">
      <%
          content.newEntries.each { entry ->
      %>
      <li class="nav-item mr-sm-2 mr-xs-auto">
          <a class="nav-link ${entry.isActive}" href="${entry.href}"><span>${entry.title}</span></a>
      </li>
      <%
          }
      %>
    </ul>
  </div>
  <div class="navbar-nav d-none d-lg-block" >
    ${config.site_search}
  </div>
</nav>
