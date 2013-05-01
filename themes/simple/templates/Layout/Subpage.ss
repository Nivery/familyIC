<div data-role="page" id="news" data-title="News & Events">
            <div data-theme="f" data-role="header" data-id="header" data-position="fixed">
                <a data-role="button" data-theme="f" href="indexMobile.html" data-icon="home" data-iconpos="left" class="ui-btn-left" data-transition="slidedown">
                    Home
                </a>
                <a data-role="button" data-theme="f" href="http://informatics.grad.uiowa.edu/news" data-icon="forward" data-iconpos="left" class="ui-btn-right">
                    Full Site
                </a>
                <h3>
                    Iowa City
                </h3>
            </div>
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
            	
				</div><br />-->
				<ul data-role="listview" data-divider-theme="f" >
					<li data-role="list-divider">Calendar</li>
				</ul><br />
				<img src="images/calendar.png" />
			</div>
			<% include MobileFooter %>
		</div>