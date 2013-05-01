
<div data-theme="f" data-role="footer" data-position="fixed" data-id="footer">
	<div data-role="navbar" data-iconpos="left">
		<ul>
		<% loop ChildrenOf('icmobile') %>
			<li>
				<a href="{$Link}" data-transition="fade" data-theme="f">
					<strong>$Title</strong>
				</a>
			</li>
		<% end_loop %>
		</ul>
    </div>
</div>