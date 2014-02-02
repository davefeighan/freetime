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
<script type="text/javascript" src="static/jsjquery.min.js"></script>
	 	<!---strat-slider---->
	    <link rel="stylesheet" type="text/css" href="static/css/slider.css" />
		<script type="text/javascript" src="static/jsmodernizr.custom.28468.js"></script>
		<script type="text/javascript" src="static/jsjquery.cslider.js"></script>
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
<script type="text/javascript" src="static/jsmove-top.js"></script>
<script type="text/javascript" src="static/jseasing.js"></script>
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
.header_bg .wrap .header .social-icons ul li_grey_fake_text {
	color: #7B7B7B;
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
</div></div>
		
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
	<script type="text/javascript" src="static/jsscript.js"></script>
	<div class="clear"></div>

		<div class="clear"></div>
</div>
</div>
</div>
<!-- start slider -->
<div class="slider_bg">
<div class="wrap">
	<div class="slider">
				<!---start-da-slider----->
				<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2>Welcome to our website</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
				</div>
				<div class="da-slide">
					<h2>Clean & Flat Design</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
				</div>
				<div class="da-slide">
					<h2>Clean & Flat Design</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
				</div>
				<div class="da-slide">
					<h2>Welcome to our website</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
				</div>			
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
 			<!---//End-da-slider----->
 	</div>
</div>
</div>
<!-- start main -->
<div class="wrap">
	<div class="main">
		<div class="main_text">
			<h2>&quot;Use your time for your own good&quot;</h2>
			<p class="para">"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
		</div>
		<!-- start grids_of_3 -->
		<div class="grids_of_3">
			<div class="grid1_of_3">
				<img src="static/images/icon1.png" alt=""/>
				<h3><a href="#">Find an Event<span> Participate</span></a></h3>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.</p>
			</div>
			<div class="grid1_of_3"> <a href="/sign_up"><img src="static/images/icon2.png" alt=""/></a>
			  <h3><a href="/sign_up">Sign-up<span> Its Free</span></a></h3>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.</p>
			</div>
			<div class="grid1_of_3">
				<img src="static/images/icon3.png" alt=""/>
				<h3><a href="#">Create and Event <span> Contribute</span></a></h3>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.</p>
			</div>
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