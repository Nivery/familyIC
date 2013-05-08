

<% include SideBar %>


<div data-role="page" id="home" data-title="Home">
			<div data-theme="f" data-role="header">
				<div style="">
                    <img src="http://www.juanfernandomaestre.com/images/IowaCityBannerLogo.png" />
                </div>
			</div>
            <div data-role="content">
				<ul data-role="listview" data-theme="f">
					
					
					<% loop Children %>
						<li><a href="{$Link}" ><img src="{$Icon.URL}"/>$Title<p>$Content</p></a></li>

					<% end_loop %> 
				</ul>
            </div>
            <div data-theme="f" data-role="footer" data-position="fixed">
                <h3>
                </h3>
                <a data-role="button" data-theme="f" href="http://informatics.grad.uiowa.edu/" data-icon="forward" data-iconpos="left" class="ui-btn-right">
                    Full website
                </a>
                <a data-role="button" data-theme="f" href="#calendar" data-icon="gear" data-iconpos="left" class="ui-btn-left" data-rel="dialog" data-transition="pop">
                    Calendar
                </a>
            </div>
</div>
		<div data-role="page" id="calendar">
			<div data-role="header" data-theme="i"><h3>Calendar</h3>
			</div>
			<div data-role="content">
				<img src="site/images/calendar.png">
			</div>
		</div>