<div class="blogSummary $FirstLast clearFix">
	<div class="blogSummaryContent">
		<p class="authorDate">$Date.Long</p>
		<%-- <h2 class="postTitle"><a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2> --%>
		<h2 class="postTitle">$Title</h2>
		<% if BlogHolder.ShowFullEntry %>
			$Content
		<% else %> 
			<p>$Content.FirstSentence(html)</p>
		<% end_if %>
		<p class="blogVitals">
			<a href="$Link" class="readMore" title="Read Full Post">Read more</a>
		</p>
	</div>
	<% if BlogImageID %>
        <img src="$BlogImage.CroppedImage(300,320).URL" alt="$Title" title="$Title" />
    <% else %>
    	<img src="$ThemeDir/images/blank_image.png" alt="no image available" />
	<% end_if %>
</div>
