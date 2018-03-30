<div class="row">
    <div id="pagePanel">
        <div id="homePanel" class="fullWidthLayout">
            <% if Slides %>
            <div class="row holdsTheSlider desktop">
                <div class="flexslider loading">
                  <ul class="slides">
                    <% loop Slides %>
                        <li>
                            <img src="$SlideImage.CroppedImage(600,320).URL" alt="$Title" title="$Title" />
                            <p class="flex-caption">
                                <span>$Title</span>$Description
                                <% if $PageID || $ExternalLink %>
                                    <% if $PageID %>
                                        <% with $Page %><a href="$Link">Read more</a><% end_with %>
                                    <% else %>
                                        <a href="$ExternalLink" target="_blank">Read more</a>
                                    <% end_if %>
                                <% end_if %>
                            </p>
                        </li>
                    <% end_loop %>
                  </ul>
                </div>
            </div>
            <% end_if %>
            <div id="boxes" class="clearFix">
              <% if $Events %>
                <div class="box position-1 events">
                    <div class="content">
                        <h2>$EventHeader</h2>
                        <div class="newsText eventy">
                            <% include EventListForHomePage %> 
                        </div>
                        <a class="clearFix readMore bunty" href="$EventsHolder.Link">See all $EventHeader</a>

                    </div>
                </div>
                <% end_if %>

                <% if $News %>
                <div class="box news">
                    <div class="content">
                        <h2>$NewsHeader</h2>
                        <% loop $News.Limit(1) %>
                        <div class="newsText">
                            <a href="$Link"><h3>$Title</h3></a>
                            <p>$Content.FirstSentence</p>
                        </div>
                        <% end_loop %>
                        <a class="clearFix readMore" href="$NewsHolder.Link">See all $NewsHeader</a>
                    </div>
                </div>
                <% end_if %>

  
                
                <%-- ------------------- boxes start --------------------- --%>

                <% if Boxes %>
                <div id="subBoxes">
                <% loop Boxes %>
                    <div class="box $Colour $FirstLast">
                        <div class="content">
                            <a href="$LinkPage.Link">
                            <% if $BoxImageID %>
                                <img class="boxImage" src="$BoxImage.CroppedImage(520,520).URL" alt="$Title" title="$Title" />
                            <% end_if %>
                            <div class="boxText">
                            <h2>$Title</h2>
                            <div class="boxTextDivider"></div>
                            <p>$Description</p>
                            </div>
                           </a>
                        </div>
                    </div>
                <% end_loop %>
                </div>
                <% end_if %>
                <%-- ------------------- boxes end --------------------- --%>


            </div>
            <div id="contentWrap" class="clearFix">
                $Content
            </div>
        </div> 

    </div>
</div>

<% require javascript(mysite/javascript/jquery.flexslider-min.js) %>
<% require javascript(mysite/javascript/flex_init.js) %>

<% require css(mysite/css/flexslider.css) %>


