<div class="twelve columns">
   <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
   
        <div class="pageContent">
            $Breadcrumbs 

            <h1>$Title</h1>
            $Content

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