
<% loop Events.Limit(2) %>
	<div class="eventWrap position-$Pos">
        <a href="$Link"><h3><% if Announcement %>$Title<% else %>$Event.Title<% end_if %></h3></a>
            <% if Event.Address %><div class="address">$Event.Address</div><% end_if %>
        <p class="dates">$DateRange <% if AllDay %><% _t('ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></p>
        <% if Announcement %>
            $Content
        <% end_if %>
    </div>
<% end_loop %>

