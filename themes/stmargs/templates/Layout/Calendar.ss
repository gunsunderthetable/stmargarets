<div class="twelve columns">
    <div id="titleHeader">
        <h1>$Title</h1>
    </div>
    
    <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        <div class="pageContent">
            $Breadcrumbs 
            $Content
            <h2>$DateHeader</h2>
            <% if Events %>
            <div id="event-calendar-events">
                <% include EventList %>
            </div>
            <% else %>
              <p><% _t('NOEVENTS','There are no events') %>.</p>
            <% end_if %>               
            $Form
            $PageComments
        </div>
        <div class="rightPanel">
            $CalendarWidget
            $MonthJumper
            <h3>Go to...</h3>
            <% include QuickNav %>                
            $MyWidgetArea
            <% include ImageLinks %>
            $MyWidgetArea
            <% include ImageLinks %>
        </div>
    </div>
</div>
