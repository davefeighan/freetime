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
<link href="static/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
</style>
</head>
<body>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div class="header">
		  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
		    <tr>
		      <td><a href="index.html"><img src="static/images/freetime_logo.png" alt="" height="75"/></a></td>
			    <td valign="middle" class="header_table"><p>
			      <form name="form1" method="post" action="">
<input name="username" type="text" id="username" value="Email address">
			      <input name="password" type="text" id="password" value="Password">
			      <input type="submit" name="Login" id="Login" value="Verzenden"></form>
			    </p>
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
		<div class="sub-head">
<ul>
            	<li><a href="#" id="menu">Menu  <span></span></a></li>
            	<li><a href="#" id="search">Search <span></span></a></li>
            </ul>
            <div class="clear"></div>
        </div>
	   <script type="text/javascript">
		$(".menu,.search").hide();
		$("#menu").click(function(){
			$(".menu").toggle();
			$(".search").hide();
			$("#search").removeClass("active");
			$("#menu").toggleClass("active");
		});
		$("#search").click(function(){
			$(".search").toggle();
			$(".menu").hide();
			$("#menu").removeClass("active");
			$("#search").toggleClass("active");
			$(".text").focus();
		});
	</script>
	<script type="text/javascript" src="static/js/script.js"></script>
	<div class="clear"></div>

		<div class="clear"></div>
</div>
</div>
</div>
<!-- start slider -->
<div class="top_bg">
  <div class="wrap">
    <div class="top">
      <h2>Profile</h2>
    </div>
  </div>
</div>
<!-- start main -->
<div class="wrap">
	<div class="main"><!-- start grids_of_3 -->
	  <div class="grids_of_1">
	    <form name="form1" method="post" action="">
	      <table width="75%" border="0" cellspacing="1" cellpadding="1">
	        <tr>
	          <td width="24%">$username (first/last)</td>
	          <td width="4%">&nbsp;</td>
	          <td width="72%">Events that match your interests</td>
            </tr>
	        <tr>
	          <td><img src="static/images/default.gif" width="150" height="150"></td>
	          <td>&nbsp;</td>
	          <td rowspan="7"><table width="85%" border="0" align="center" cellpadding="1" cellspacing="1">
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
              </table></td>
            </tr>
	        <tr>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td>Subscribed events</td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td><img src="static/images/flat-27389_640.png" width="150" height="152"></td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td>Event locations</td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td><img src="static/images/Interactive-Google-Maps.png" width="150" height="150"></td>
	          <td>&nbsp;</td>
            </tr>
	        <tr>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
	          <td>&nbsp;</td>
            </tr>
          </table>
	    </form>
	    <p>&nbsp;</p>
<p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <div class="clear"></div>
	  </div>
		<!-- end grids_of_3 -->
	</div>
</div>
<!-- start main_bg -->
<div class="main_bg">
<div class="wrap"></div>
</div>
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