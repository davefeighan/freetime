<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Webworld-v2 Website Template | Home :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href="static/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="static/js/jquery.min.js"></script>
	 	<!---strat-slider---->
	    <link rel="stylesheet" type="text/css" href="static/css/slider.css" />
		<script type="text/javascript" src="static/js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="static/js/jquery.cslider.js"></script>
			<script type="text/javascript">
				$(function() {
				
					$('#da-slider').cslider({
						autoplay	: true,
						bgincrement	: 450
					});
				
				});
			</script>
		<!---//strat-slider---->
<!-- start top_js_button -->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<style type="text/css">
a:visited {
	color: #000;
}
a:hover {
	color: #000;
}
a:active {
	color: #000;
}
.event_text {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 16px;
	color: #000;
}
</style>
</head>
<body>
<!-- start header -->
<div class="header_bg">
<div class="main">
	<div class="header">
		  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
		    <tr>
		      <td><a href="/"><img src="static/images/freetime_logo.png" alt="" height="75"/></a></td>
			    <td valign="middle" class="header_table">
	                  % if not user:
	      			      <form name="form1" method="post" action="/sign_in">
		                  ${sign_in_form.username}
		                  ${sign_in_form.password}
		                  <input type="submit" name="Login" id="Login" value="Login"></form>
		              </form>
	                  % else:
	                  <a href="/sign_out">Logout</a>
	                  % endif
				</td>
		      <td valign="middle">&nbsp;</td>
			    <td><div class="social-icons">
			      <ul>
			        <li><a href="#" target="_blank"> </a></li>
			        <li><a href="#" target="_blank"></a></li>
			        <li><a href="#" target="_blank"></a></li>
			        <li><a href="#" target="_blank"></a></li>
		          </ul></div>
	          </td>
	        </tr>
    </table></div>            
</div>
		<div class="clear"></div>
	</div>
</div>
<!-- start header -->
<div class="header_btm">
<div class="wrap">
	<div class="header_sub">
		<div class="h_menu">
			<ul>
				<li class="active"></li>
			</ul>
		</div>
		
            <div class="clear"></div>
        </div>

	<script type="text/javascript" src="static/js/script.js"></script>
	<div class="clear"></div>


</div>
</div>
</div>
<!-- start slider -->
<div class="top_bg">
    <div class="top">
    %if user:
      <h2>Welcome ${user.first_name}</h2>
    %endif
    </div>
</div>
</div>

<!-- start main -->
<div class="wrap">
	    <form name="form1" method="post" action="">
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <table width="75%" border="0" cellspacing="1" cellpadding="1">
	        <tr>
	          <td width="35%"><table width="75%" border="0" cellspacing="1" cellpadding="1">
	            <tr>
	              <td width="24%">&nbsp;</td>
	              <td width="34%">&nbsp;</td>
	              <td width="42%">&nbsp;</td>
                </tr>
	            <tr>
	              <td colspan="3"><img src="static/images/default.gif" width="150" height="150"></td>
                </tr>
	            <tr>
	              <td>&nbsp;</td>
	              <td>&nbsp;</td>
	              <td>&nbsp;</td>
                </tr>
                <tr>
                Your interests:
                <ul>
                % for interest in user.interests:
                <li>${interest.name}</li>
                % endfor
                </ul>
	            <tr>
	              <td colspan="3"><a href="#">Subscribed Events</a></td>
                </tr>
	            <tr>
	              <td>&nbsp;</td>
	              <td>&nbsp;</td>
	              <td>&nbsp;</td>
                </tr>
              </table></td>
	          <td width="5%">&nbsp;</td>
	          <td width="60%"><p>&nbsp;</p>
	            <table width="75%" border="0" cellspacing="1" cellpadding="1">
	              <tr>
	                <td colspan="3">Events that might interest you!</td>
                  </tr>
                </table>
	            <p>&nbsp;</p>
	            <p>&nbsp;</p>
	            % for event in events:
	            <table width="75%" border="0" cellspacing="1" cellpadding="1">
	                <tr>
	                  <td width="29%" rowspan="4"><img src="static/images/default.gif" alt="" width="62" height="65"></td>
	                  <td colspan="2">${event.name}</td>
	                </tr>
	                <tr>
	                  <td width="59%">Organised by: ${event.leader.first_name} ${event.leader.last_name}</td>
	                  <td width="12%">&nbsp;</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                </tr>
	                <tr>
	                  <td colspan="2">${event.date.isoformat()} - Cairo</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>Minimum people </td>
	                  <td>17</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>Maximum people</td>
	                  <td>30</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td><input type="submit" name="subscribe" id="subscribe" value="subscribe to the event"></td>
	                  <td>&nbsp;</td>
	                </tr>
	                <tr>
	                  <td colspan="3">&nbsp;</td>
	                </tr>
	              </table>
	              % endfor
                <p>&nbsp;</p>
                <table width="75%" border="0" cellspacing="1" cellpadding="1">
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                <table width="75%" border="0" cellspacing="1" cellpadding="1">
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
<p>&nbsp;</p></td>
            </tr>
          </table>
	      <p>&nbsp;</p>
	    </form>
      % if user and user.role == 'Leader':
      <br/>
      <br/>
      Create Event<br/>
      <form action='/create_event' method='post'>
        ${event_form.name}
      <input type='submit' value="Submit">
      </form>
      % endif

	    <div class="clear"></div>
	  </div>
		<!-- end grids_of_3 -->
	</div>
</div>
<!-- start main_bg -->

<!-- start footer -->
<div class="footer_bg"></div>
<!-- start footer -->
<div class="footer_bg1">
<div class="wrap">
	<div class="footer1">
		<!-- scroll_top_btn -->
      <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
		<div class="copy">
		  <p class="link"><span>&copy; 2014 PITME Hackathon. All rights reserved </span></p>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
</body>
</html>