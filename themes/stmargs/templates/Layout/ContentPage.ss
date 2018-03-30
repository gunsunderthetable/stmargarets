<div class="twelve columns">
    <div id="titleHeader">
        <h1>$Title</h1>
    </div>

    <div class="row">
    
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                $Breadcrumbs 

                <% if $Intro %><p class="intro">$Intro</p><% end_if %>
                $Content
                <% if $ShowChildrenAsList %>
                <div id="listOfChildren" class="clearFix">
                    <ul>
                        <% loop $Children %>
                        <li class="$FirstLast">
                            <h2>$Title</h2>
                            <% if $Intro %>
                            <p>$Intro</p>
                            <% else_if $Content %>
                            <p>$Content.FirstSentence</p>
                            <% end_if %> 
                            <a href="$Link">Read more...</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </div>
                <% end_if %>
                <% if hasMap %>
                <div class="map">
                    <div id="map_canvas" style="width:100%; height:431px;"></div>
                </div>
                <% end_if %>
                <% if $Children %>
                <div id="mobileLinks" class="mobile bottomed">
                    <div class="clearFix">
                        <h2>In this section</h2>
                        <p>
                            <% loop $Children %>
                            <a class="quickLinkPara $FirstLast" href="$Link" title="$Title">$Title</a>
                            <% end_loop %>
                        </p>
                    </div>
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