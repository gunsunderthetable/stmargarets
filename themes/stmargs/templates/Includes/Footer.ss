<div id="footer">
    <div class="container">
        <div class="twelve columns footer">
            <div class="row">
                <div id="colophonFooter">
                    <div class="colophon left">
                        <% if $SiteConfig.TwitterLink || $SiteConfig.FacebookLink %>
                        <div id="socialButtons">
                            <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" alt="twitter"><img src ="$ThemeDir/images/twitter.png" /></a><% end_if %>
                            <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook.png" /></a><% end_if %>
                            <% if $SiteConfig.YoutubeLink %><a href="$SiteConfig.YoutubeLink" target="_blank" alt="YoutubeLink"><img src ="$ThemeDir/images/youtube.png" /></a><% end_if %>
                            <% if $SiteConfig.FlickrLink %><a href="$SiteConfig.FlickrLink" target="_blank" alt="YoutubeLink"><img src ="$ThemeDir/images/flickr.png" /></a><% end_if %>
                        </div>
                        <p>&copy; $Now.Year $SiteConfig.Title</p>
                        <% end_if %>
                    </div>
                    <div class="colophon right">
                        <img src="$ThemeDir/images/heritagelogo.png" alt="heritage lottery funding" />
                        <p>
                            <% loop $FooterLinks %>
                            <a href="$URL" title="$LinkText">$LinkText</a><% if Last %><% else %>&nbsp;|&nbsp;<% end_if %>        
                            <% end_loop %>
                        </p>
                    </div>            
                </div>
                <div id="cloudLogo">
                    <a href="http://suffolk.cloud"><img src = "mysite/images/cloud_footer_logo.png" alt = "suffolk cloud" /></a>
                </div>
            </div>
        </div>
    </div>
</div>
