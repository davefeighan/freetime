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
		      <td><a href="/"><img src="static/images/freetime_logo.png" alt="" height="75"/></a></td>
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
<!-- start header --><!-- start slider --><!-- start main -->
<div class="wrap">
	<div class="main"><!-- start grids_of_3 -->
	  <div class="grids_of_1">
	    <form name="registration_form" method="post" action="/sign_up">
	      <table width="50%" border="1" align="right" cellpadding="0" cellspacing="1">
	        <tr>
	          <td width="213" align="center" valign="top">${registration_form.first_name.label}</td>
	          <td width="174" align="left"><label for="name_first"></label>
	          	${registration_form.first_name}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.last_name.label}</td>
	          <td align="left"><label for="name_last"></label>
	          	${registration_form.last_name}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.age.label}</td>
	          <td align="left"><label for="age"></label>
		          	${registration_form.age}
              </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.username.label}</td>
	          <td align="left"><label for="username"></label>
	          ${registration_form.username}
		        </td>
          </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.password.label}</td>
	          <td align="left"><label for="password"></label>
	          	${registration_form.password}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.confirm.label}</td>
	          <td align="left"><label for="password_confirm"></label>
		          ${registration_form.confirm}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
	        <tr>
	          <td align="center" valign="top">${registration_form.role.label}</td>
	          <td align="left"><label for="role"></label>
		          ${registration_form.role}
						</td>
            </tr>
	        <tr>
	          <td align="center" valign="top">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
	        <tr>
	          <td align="center" valign="top">Select your first interest</td>
	          <td align="left">
	          	${registration_form.interests[0]}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">Select you second interest</td>
	          <td align="left">
		          ${registration_form.interests[1]}
	          </td>
            </tr>
	        <tr>
	          <td align="center" valign="top">Select you third interest</td>
	          <td align="left">
		          ${registration_form.interests[2]}
	          </td>
            </tr>
	        <tr>
	          <td align="left">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
	        <tr>
	          <td align="left">&nbsp;</td>
	          <td align="left"><input type="submit" name="submit" id="submit" value="Submit"></td>
            </tr>
	        <tr>
	          <td align="left">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
	        <tr>
	          <td align="left">&nbsp;</td>
	          <td align="left">&nbsp;</td>
            </tr>
          </table>
        </form>
	    <p><img src="static/images/icon2.png" width="117" height="117"></p>
<p>&nbsp;</p>
	    <p>Improve yourself or others</p>
	    <p>jhjh f sdfjhsd jjsdhf jsdhfjh</p>
	    <p>jsdfh skkjhf ksdhfkj h</p>
	    <p>jshdf khsdk j hsdfjkhsd fkh</p>
	    <p>kshdfk hsjkfhs fhkhsdf</p>
	    <p> jfhskdhf kjhsdfkjhsdfjkh</p>
	    <p> sdfhksdh jhsdfjkhsdkf</p>
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