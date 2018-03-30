<div class="twelve columns">
    <div id="titleHeader">
        <h1>$Title</h1>
    </div>

        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                $Breadcrumbs 

                <% with CurrentDate %>
                <p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
                <% end_with %>
                <% if $Location %><p><strong>Location: </strong>$Location</p><% end_if %>
          
                $Content

                <% if OtherDates %>
                <div class="event-calendar-other-dates">
                  <h4><% _t('CalendarEvent.ADDITIONALDATES','Additional Dates for this Event') %></h4>
                  <ul>
                    <% loop OtherDates %>
                    <li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
                    <% end_loop %> 
                  </ul>
                </div>
                <% end_if %>
                <div class="shareBlogStory">
                    <p>Share this article:</p>
                    <div class="shareButtons">
                        <a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/twitter_colour.png" alt="share on twitter" title="share on twitter" /></a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/facebook_colour.png" alt="share on facebook" title="share on facebook" /></a>
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