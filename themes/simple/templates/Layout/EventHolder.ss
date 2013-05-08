<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
				

				
						<ul data-role="listview" data-filter="true">
							<% if $URLSegment == "eventsmain" %>
								<% loop getAllEvents %>
									<li><% if Picture %><img src={$Picture.URL} /><% end_if %><h3><a href="{$Link}">$Title</a></h3><p>$Date<br />$Content.Summary(10)</p></li>
								<% end_loop %>
							<% else %>
								<% loop Children %>
									<li><% if Picture %><img src={$Picture.URL} /><% end_if %><h3><a href="{$Link}">$Title</a></h3><p>$Date<br />$Content.Summary(10)</p></li>
								<% end_loop %>
							<% end_if %>

							<!--<li data-icon="back"><a href="#news">Back</a></li>-->
						</ul>
				
					
				</ul>
				
			
            </div>
			<% include MobileFooter %>
		</div>