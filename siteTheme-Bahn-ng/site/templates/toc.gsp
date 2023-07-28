<% if (content?.body.contains('<!-- endtoc -->')) { %>
    ${content?.body?.split("(?ms)<!-- endtoc -->",2)[0]}
<% } else { %>
<div id="toc" class="toc">
    <div id="toctitle">Table of Contents</div>
    <%
            // try to generate a TOC by "parsing" HTML
            def newBody = ""
            def i = 0
            def lastLevel = 1
            def openLists = 0
            content.body.eachLine { line ->
                try {
                    def match = line =~ /^<[hH]([1-3])[^>]*>([^<]*)<\/[hH][1-3]>.*/
                    if (match) {
                        def level = match[0][1] as Integer
                        def id = "_"+match[0][2].replaceAll("[^-a-zA-Z0-9]","_").toLowerCase()
                        def title = match[0][2]

                        if (level > lastLevel) {
                            def sect = level-1
                            out << "\n" + "\t"*level + "<ul class='sectlevel$sect'>\n"
                            openLists += 1
                        } else if (level < lastLevel) {
                            out << "</li>\n"
                            out << "\t"*lastLevel + "</ul>\n"
                            out << "\t"*(lastLevel-1) + "</li>\n"
                            openLists -= 1
                        } else {
                            out << "</li>\n"
                        }

                        out << "\t"*level + "<li><a href='#$id-$i'>$title</a>"
                        line = "<h$level id='$id-$i'>$title</h$level>"
                        i += 1
                        lastLevel = level
                    }
                    newBody += line+"\n"
                } catch (Exception e) {
                    out << "$e\n"
                }
            }

            while (openLists > 0) {
                out << "\t"*lastLevel + "</li>\n"
                out << "\t"*lastLevel + "</ul>\n"
                openLists -= 1
                lastLevel -= 1
            }
            content.body = newBody
    %>
</div>

<% } %>
