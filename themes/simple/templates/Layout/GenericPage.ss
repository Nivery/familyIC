<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
            	<article>
					<h1 id="title">$Title</h1>
                    <% if Picture %>
                        <img class="generic-image" src="{$Picture.URL}"> 
                    <% end_if %>
					<div class="content">$Content</div>
				</article>
					
			</div>
			<% include MobileFooter %>
		</div>