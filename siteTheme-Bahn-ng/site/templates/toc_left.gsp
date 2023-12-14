<%
    def menu = content.menu[content['jbake-menu']]

%>
        <form class="td-sidebar__search d-flex align-items-center d-lg-none" action="${content.rootpath}search.html">

            <input aria-label="Suchen" name="q" autocomplete="off" class="form-control td-search-input"
                   placeholder="Suchen" type="search">


            <button aria-controls="td-docs-nav" aria-expanded="false"
                    aria-label="Toggle section navigation" class="btn btn-link td-sidebar__toggle d-md-none p-0 ml-3 fas fa-bars" data-target="#td-section-nav"
                    data-toggle="collapse" type="button">
            </button>
        </form>

        <nav aria-label="Table of contents" class="collapse td-sidebar-nav" id="td-section-nav" >
            <ul class="td-sidebar-nav__section">
                <li class="collapse show" id="docs">
                    <ul class="td-sidebar-nav__section">
                        <%include "toc.gsp"%>
                    </ul>
                </li>
            </ul>
        </nav>
