<%
    def url = (config.site_server+content.uri).encodeURL()
    def title = (content.card?:content.title).encodeURL()
%>
<div class="increase-zindex">
    <span style="font-size: x-large;">
        <a href="https://twitter.com/intent/tweet?url=${url}&text=${title}" target="_blank"><i class="fab fa-twitter"></i></a>
        <a href="https://www.linkedin.com/sharing/share-offsite/?url=${url}" target="_blank"><i class="fab fa-linkedin"></i></a>
        <a href="https://www.facebook.com/sharer/sharer.php?u=${url}" target="_blank"><i class="fab fa-facebook"></i></a>
    </span>
</div>
