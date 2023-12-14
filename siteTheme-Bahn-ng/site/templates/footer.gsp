
    <!--footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <span class="text-muted">&copy; 2020 | based on <a href="https://arc42.org">arc42 7.0</a> | mixed with <a href="http://getbootstrap.com/">Bootstrap v5.0.0-beta</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></span>
        </div>
    </footer-->

    <footer class="bg-dark py-2 row d-print-none">
        <div class="container-fluid mx-sm-5">
            <div class="row">
                <div class="col-3 col-sm-2 text-xs-center order-sm-2">


                    <ul class="list-inline mb-0">
                        <% if (config.site_footerMail) { %>
                        <li class="list-inline-item mx-2 h3" data-original-title="Send a mail" data-placement="top"
                            data-toggle="tooltip" title="">
                            <a aria-label="Send a mail" title="Send a mail" class="text-white" href="mailto:${config.site_footerMail}" rel="noopener noreferrer"
                               target="_blank" style="text-decoration: none;">
                                <i class="fa fa-envelope"></i>
                            </a>
                        </li>
                        <% } %>
                        <% if (config.site_footerTwitter) { %>
                        <li class="list-inline-item mx-2 h3" data-original-title="Contact on Twitter" data-placement="top"
                            data-toggle="tooltip" title="">
                            <a aria-label="Contact on Twitter" title="Contact on Twitter" class="text-white" href="${config.site_footerTwitter}" rel="noopener noreferrer"
                               target="_blank" style="text-decoration: none;">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <% } %>
                        <% if (config.site_footerSO) { %>
                        <li class="list-inline-item mx-2 h3" data-original-title="Check at Stack Overflow" data-placement="top"
                            data-toggle="tooltip" title="">
                            <a aria-label="Check at Stack Overflow" title="Check at Stack Overflow" class="text-white" href="${config.site_footerSO}" rel="noopener noreferrer"
                               target="_blank" style="text-decoration: none;">
                                <i class="fab fa-stack-overflow"></i>
                            </a>
                        </li>
                        <% } %>
                    </ul>


                </div>
                <div class="col-3 col-sm-2 text-right text-xs-center order-sm-3">


                    <ul class="list-inline mb-0">

                        <% if (config.site_footerGithub) { %>
                        <li class="list-inline-item mx-2 h3" data-original-title="Checkout on GitHub" data-placement="top"
                            data-toggle="tooltip" title="">
                            <a aria-label="Checkout on GitHub" title="Checkout on GitHub" class="text-white" href="${config.site_footerGithub}" rel="noopener noreferrer"
                               target="_blank" style="text-decoration: none;">
                                <i class="fab fa-github"></i>
                            </a>
                        </li>
                        <% } %>

                        <% if (config.site_footerSlack) { %>
                        <li class="list-inline-item mx-2 h3" data-original-title="Contact via Slack" data-placement="top"
                            data-toggle="tooltip" title="">
                            <a aria-label="Contact via Slack" title="Contact via Slack" class="text-white" href="${config.site_footerSlack}" rel="noopener noreferrer"
                               target="_blank" style="text-decoration: none;">
                                <i class="fab fa-slack"></i>
                            </a>
                        </li>
                        <% } %>


                    </ul>


                </div>
                <div class="col-18 col-sm-8 text-center py-2 order-sm-2">

                        ${config.site_footerText}

                </div>
            </div>
        </div>
    </footer>

    <script crossorigin="anonymous"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            src="${content.rootpath}js/popper.min.js"></script>
    <script crossorigin="anonymous"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            src="${content.rootpath}js/bootstrap.min.js"></script>


    <script crossorigin="anonymous"
            integrity="sha256-tfwbKdJGWDWEQlS9TYBHOOryTAzsUwCbTGiZmJvlWkc=" src="${content.rootpath}/js/main.min.b5fc1b29d2465835844254bd4d804738eaf24c0cec53009b4c6899989be55a47.js"></script>
    <script src="${content.rootpath}js/bootstrap.min.js"></script>
    <script src="${content.rootpath}js/blocks.js" ></script>
    <script src="${content.rootpath}js/prettify.js"></script>
    <script src="${content.rootpath}js/adoc-scrollspy.js"></script>
    <script src="${content.rootpath}js/lightbox.js"></script>
    <script src="${content.rootpath}js/copy-n-paste.js"></script>
    <script src="${content.rootpath}js/openseadragon.js"></script>

    
