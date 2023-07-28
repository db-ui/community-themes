<div id="document-meta">
  <nav aria-label="breadcrumb" class="d-none d-md-block d-print-none">
    <ol class="breadcrumb spb-1">
      <%
        def sideMenu = content.menu[content['jbake-menu']]
        def topMenu = content.entriesMap[content['jbake-menu']]
        if (topMenu) { topMenu = topMenu[0]} else { topMenu = "" }
        def crawl
        def breadcrumbs = [:]
        crawl = { map, parent ->
          map.each { entry ->
            if (entry.children) {
              crawl(entry.children, parent +"<li aria-current='page' class='breadcrumb-item'>${entry.title}</li>")
            } else {
              breadcrumbs[entry.uri] = parent +"<li aria-current='page' class='breadcrumb-item'><a href='${content.rootpath}${entry.uri}'>${entry.title}</a></li>"
            }
          }
        }
        crawl(sideMenu, "<li aria-current='page' class='breadcrumb-item'>${topMenu}</li>")
        if (content.uri) {
          out << breadcrumbs[content.uri]
        }
      %>
    </ol>
  </nav>
  <%include "doc-meta.gsp" %>
</div>

<div class="td-content">
  <%
    def splitBody = content.body
    if (splitBody.contains("<!-- endtoc -->")) {
      splitBody = splitBody.split("(?ms)<!-- endtoc -->", 2)[1]
    }
    out << splitBody

  %>

  <!--div class="text-muted mt-5 pt-3 border-top">Last modified July 3, 2019: <a
          href="https://github.com/google/docsy-example/commit/d6aa89c8b24089d7e6741030864eff209465e896">Added
      links to user guide repo (d6aa89c)</a>
  </div-->
</div>

<% if (content.columns) { %>
<script>
  document.addEventListener('DOMContentLoaded', function(event) {
  const contentBody = document.querySelector(".sectionbody");
  contentBody.classList.add('columns-${content.columns}')
})
</script>
<% } %>
