<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
				

				
						<ul data-role="listview" data-filter="true">
							<% if $URLSegment == "eventsmain" %>
								<% loop getAllEvents %>
									<li><a href="{$Link}"><% if Picture %><img src={$Picture.URL} /><% end_if %><h3>$Title</h3><p>$Date.NiceUS<br />$Content.Summary(10)</p></a></li>
								<% end_loop %>
							<% else %>
								<% loop Children %>
									<li><a href="{$Link}"><% if Picture %><img src={$Picture.URL} /><% end_if %><h3>$Title</h3><p>$Date.NiceUS<br />$Content.Summary(10)</p></a></li>
								<% end_loop %>
							<% end_if %>

							<!--<li data-icon="back"><a href="#news">Back</a></li>-->
						</ul>
				
					
				</ul>
				
			
            </div>
			<% include MobileFooter %>
		</div>