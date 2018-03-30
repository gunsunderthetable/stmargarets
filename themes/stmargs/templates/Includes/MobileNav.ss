<div id="subNav" class="sidrNav">
    <ul>
        <% loop Menu(1) %>
        <li>
            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
            <% if $Children %>
            <ul class="subNavMobileChildren">
            	<% loop $Children %>
            	<a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
            	<% end_loop %>
            </ul>
            <% end_if %>
        </li>
        <% end_loop %>
    </ul>
</div>