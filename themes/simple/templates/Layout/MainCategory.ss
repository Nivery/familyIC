<div data-role="page" id="news" data-title="News & Events" data-add-back-btn="true">
            <% include MobileHeader %>
            <div data-role="content">
            	<div data-role="collapsible-set" data-theme="f">
            	<% loop Children %>
            		<div data-role="collapsible" data-iconpos="right">
						<h3>
							$Title							
							<!-- <span class="abstract">transit, parking, weather... </span> -->
						</h3>
						<ul data-role="listview" data-theme="g">
							<% loop Children %>
								<li><a href="{$Link}">$Title</a></li>
							<% end_loop %>
						</ul>
					</div>
				<% end_loop %>
            	
				</div><br />
			
			</div>
			<% include MobileFooter %>
		</div>