<div data-role="page" id="news" data-title="News & Events">
           <% include MobileHeader %>
            <div data-role="content">
            	<article>
                    <div class="titleSection">
					   <h1 id="title">$Title</h1>
                    </div>
                    <% if Picture %>
                        <img class="generic-image" src="{$Picture.URL}"> 
                    <% end_if %>
					<div class="content">$Content</div>
				</article>
					$Form
					$PageComments
			</div>
			<% include MobileFooter %>
		</div>