<div data-role="page" id="news" data-title="News & Events">
            <div data-theme="f" data-role="header" data-id="header" data-position="fixed">
                <a data-role="button" data-theme="f" href="indexMobile.html" data-icon="home" data-iconpos="left" class="ui-btn-left" data-transition="slidedown">
                    Home
                </a>
                <a data-role="button" data-theme="f" href="http://informatics.grad.uiowa.edu/news" data-icon="forward" data-iconpos="left" class="ui-btn-right">
                    Full Site
                </a>
                <h3>
                    News & Events
                </h3>
            </div>
            <div data-role="content">
				

				
						<ul data-role="listview" data-filter="true">
							<% if $URLSegment == "eventsmain" %>
								<% loop getAllEvents %>
									<li><h3><a href="{$Link}">$Title</a></h3><p>$Date<br />$Content.Summary(10)</p></li>
								<% end_loop %>
							<% else %>
								<% loop Children %>
									<li><h3><a href="{$Link}">$Title</a></h3><p>$Date<br />$Content.Summary(10)</p></li>
								<% end_loop %>
							<% end_if %>

							<!--<li data-icon="back"><a href="#news">Back</a></li>-->
						</ul>
				
					
				</ul>
				
			
            </div>
			<% include MobileFooter %>
		</div>