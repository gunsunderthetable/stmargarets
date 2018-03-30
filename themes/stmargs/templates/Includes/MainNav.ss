    <div class="container">
        <div id="navWrap" class="clearFix">
            <div id="mainNav" class="twelve columns clearFix">
                <ul>
                    <% loop Menu(1) %>
                    <li class="$FirstLast">
                        <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>

                    </li>
                    <% end_loop %>
                </ul>
            </div>
            <div id="searchWrap" class="desktop">
                <% include Search %>
            </div>
        </div>
    </div>