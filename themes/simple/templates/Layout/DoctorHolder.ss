<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
				

				
						<ul data-role="listview" data-filter="true">
							<% loop Children %>
								<li data-filtertext="{$getFilterText}"><a href="{$Website}" rel="external"><% if Picture %><img src={$Picture.URL} /><% end_if %><h3>$Name</h3><p>$Specialty<br />$Address<br />$PhoneNo<br />$Clinic</p></a></li>
							<% end_loop %>


							<!--<li data-icon="back"><a href="#news">Back</a></li>-->
						</ul>
				
					
				</ul>
				
			
            </div>
			<% include MobileFooter %>
		</div>