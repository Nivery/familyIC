<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
            	<article>
					<h1>$Title</h1>
					<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="{$MapLink}"></iframe><br /><small>
                    <a href="{$MapLink}" style="color:#0000FF;text-align:left">View Larger Map</a></small>
				</article>
					$Form
					$PageComments
			</div>
			<% include MobileFooter %>
		</div>