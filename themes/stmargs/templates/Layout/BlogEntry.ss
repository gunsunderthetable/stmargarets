<div class="twelve columns">
    <div id="titleHeader">
        <h1>$Title</h1>
    </div>

    <div class="row">
    
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                $Breadcrumbs 

                <% if $Intro %><p class="intro">$Intro</p><% end_if %>
 

                <div class="blogEntry">
                    <p class="authorDate">$Date.Long</p>
                        <% if TagsCollection %>
                        <p class="tags">
                            <% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
                            <% loop TagsCollection %>
                                <a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                            <% end_loop %>
                        </p>
                        <% end_if %>


                        <% if $BlogImage %>
                        <div class="blogImage">
                            <% with BlogImage %>
                             <img src="$CroppedImage(900,652).URL" alt="$Title" />
                            <% end_with %>
                        </div>
                        <% end_if %>
                        <div id="blogContent">
                        $Content        
                        </div>
                        <div class="shareBlogStory">
                            <p>Share this article:</p>
                            <div class="shareButtons">
                                <a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/twitter_colour.png" alt="share on twitter" title="share on twitter" /></a>
                                <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/facebook_colour.png" alt="share on facebook" title="share on facebook" /></a>
                            </div>
                        </div>                        
                </div>




                <% if hasMap %>
                <div class="map">
                    <div id="map_canvas" style="width:100%; height:431px;"></div>
                </div>
                <% end_if %>
                $Form
                $PageComments
            </div>
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
            
    </div>
        
</div>