<div data-role="page" id="news" data-title="News & Events">
            <% include MobileHeader %>
            <div data-role="content">
				<div id="map_canvas" style="width:350px; height:400px"></div>
			</div>
		
			<% include MobileFooter %>
		</div>



<script type="text/javascript">
	function initialize() {
		var latlng = new google.maps.LatLng(41.67230, -91.53857);
		var settings = {
			zoom: 13,
			center: latlng,
			mapTypeControl: true,
			mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
			navigationControl: true,
			navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
			mapTypeId: google.maps.MapTypeId.ROADMAP
    };
	
	var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
	
	var locations = [
      ['Iowa City Park','Size: 42 acres. Amenities: Trails, basketball court, picnic area, parking.', 41.67230, -91.53857],
      ['College Park','Size: 32 acres. Amenities: basketball court, picnic area, parking.', 41.65893, -91.52590],
     
    ];
	
	
	
	var infowindow = new google.maps.InfoWindow();
	 
	 var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][2], locations[i][3]),
        map: map,
		title: locations[i][0]
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][1]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }


	}

	$(document).ready(function(){
	
		initialize();
	});
  

	</script>