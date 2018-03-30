<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage" class="fullWidthLayout">
            <div class="pageContent">
                <h1>$Title</h1>
                <% if $Intro %><p class="intro">$Intro</p><% end_if %>
                $Content
                <% if $HTMLSnippet %>
                <div id="htmlSnippet">
                    $HTMLSnippet
                </div>
                <% end_if %>
                <% if hasMap %>
                <div class="map">
                    <div id="map_canvas" style="width:100%; height:431px;"></div>
                </div>
                <% end_if %>
                <% if $Menu(2) %>
                <div id="mobileLinks" class="mobile bottomed">
                    <div class="clearFix">
                        <h2>In this section</h2>
                        <p>
                            <% loop $menu(2) %>
                            <a class="quickLinkPara $FirstLast" href="$Link" title="$Title">$Title</a>
                            <% end_loop %>
                        </p>
                    </div>
                </div>
                <% end_if %>  
                $Form
                $PageComments
            </div>
        </div>
            
    </div>
        
</div>