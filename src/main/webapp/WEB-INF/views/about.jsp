
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Infirmary a Medical Category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Infirmary Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/numscroller-1.0.js"></script>

<!-- //js -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>

	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->

	<script src="js/responsiveslides.min.js"></script>
</head>
<body>
<!-- header -->
<div class="header wow zoomIn">
	<div class="container">
		<div class="header_left" data-wow-duration="2s" data-wow-delay="0.5s">
			<ul>
				<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
		</div>
		<div class="header_right">
			<div class="login">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Login</a></li>
					<li><a href="/elec5619/registration"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Signup</a></li>
					<li>
						<div class="search-bar">
							<div class="search">		
								<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a>
							</div>
							<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
								<div id="small-dialog" class="mfp-hide">
									<div class="search-top">
										<div class="login_pop">
											<form action="http://localhost:8080/elec5619/disease" method="get">
												<input type="submit" value="">
												<input type="text" name="diseasename" value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
											</form>
										</div>			
									</div>
									<script>
												$(document).ready(function() {
												$('.popup-with-zoom-anim').magnificPopup({
													type: 'inline',
													fixedContentPos: false,
													fixedBgPos: true,
													overflowY: 'auto',
													closeBtnInside: true,
													preloader: false,
													midClick: true,
													removalDelay: 300,
													mainClass: 'my-mfp-zoom-in'
												});
																												
												});
									</script>				
								</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header -->
<div class="header-bottom">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo grid">
						<div class="grid__item color-3">
							<h1><a class="link link--nukun" href="index.html"><i></i>INFI<span>R</span>MARY</a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil links" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item "><a href="index" class="menu__link">Home</a></li>
							<li class="menu__item menu__item--current"><a href="about.html" class="menu__link">About</a></li> 
							<li class="menu__item"><a href="diagnosis" class="menu__link">Diagnosis</a></li> 
							<li class="menu__item"><a href="gallery" class="menu__link">Gallery</a></li> 
							<li class="menu__item "><a href="contact" class="menu__link">Contact</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>

<!-- banner -->
<div class="banner page_head">

</div>
<!-- //banner -->
<div class="about-page">
	<div class="container">
		<h3 class="tittle">About</h3>
            <div class="col-md-6 about_img wow fadeInRight animated" data-wow-delay=".5s">
				<img src="images/g1.jpg" alt="">
            </div>
			<div class="col-md-6 about_img about_img_left">
				<div class="choose-grid wow fadeInRight animated" data-wow-delay=".5s">
					<h4>Temporibus autem quibusdam et aut officiis saepe eveniet ut et voluptates</h4>
					<p>Aenean ac leo eget nunc fringilla fringilla a non nulla! Nunc orci mi, venenatis quis ultrices vitae, congue non nibh. Nulla bibendum justo eget.</p>
				</div>
				<div class="choose-grid wow fadeInLeft animated" data-wow-delay=".5s">
					<h4>Necessitatibus saepe eveniet ut et </h4>
					<p>Aenean ac leo eget nunc fringilla fringilla a non nulla! Aenean ac leo eget nunc fringilla fringilla a non nulla! Nunc orci mi, venenatis quis ultrices vitae, congue non nibh. Nulla bibendum justo eget.</p>
				</div>
            </div>
			<div class="clearfix"></div>
		<p class="para_abt wow fadeInUp animated" data-wow-delay=".5s">Temporibus autem quibusdam et aut officiis 
		debitis aut rerum necessitatibus saepe eveniet ut et voluptates 
		repudiandae sint et molestiae non recusandae. Sed ut perspiciatis
		unde omnis iste natus error sit voluptatem accusantium.</p>
	</div>
</div>
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3 class="tittle">Testimonials</h3>
			<div class="testimonials-grids">
				<div class="col-md-6 testimonials-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="testimonials-grid1">
						<img src="images/3.png" alt=" " class="img-responsive" />
						<p>Chris Won</p>
					</div>
					<div class="testimonials-grid2">
						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
							suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur
							quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
					</div>
				</div>
				<div class="col-md-6 testimonials-grid">
					<div class="testimonials-grid1">
						<img src="images/4.png" alt=" " class="img-responsive" />
						<p>James Alley</p>
					</div>
					<div class="testimonials-grid2">
						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
							suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur
							quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //testimonials -->
<div class="ind-team">
	<div class="container">
		<h3>Meet Our Team</h3>
		<div class="col-md-4 ind-gds text-center ">
			<div class="team-img">
				<img class="img-responsive" src="images/pic4.jpg" alt=" ">
				<div class="team-info">
					<ul>
						<li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
					</ul>
				</div>
			</div>
			<h4>Dr. Federica</h4>
			<p>Dental Surgeon</p>
		</div>
		<div class="col-md-4 ind-gds text-center ">
			<div class="team-img">
				<img class="img-responsive" src="images/pic5.jpg" alt=" ">
				<div class="team-info">
					<ul>
						<li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
					</ul>
				</div>
			</div>
			<h4>Dr. Thompson</h4>
			<p>Cardiology</p>
			
		</div>
		<div class="col-md-4 ind-gds text-center">
			<div class="team-img">
				<img class="img-responsive" src="images/pic6.jpg" alt=" ">
				<div class="team-info">
					<ul>
						<li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
						<li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
					</ul>
				</div>
			</div>
			<h4>Dr. Victoria</h4>
			<p>Neurology</p>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
<!-- contact -->
<div class="contact">
	<div class="container">
		
		<div class="col-md-6 contact-right wow fadeInLeft animated animated" data-wow-delay="0.4s">
			<h3>Contact Us</h3>
			<div class="strip"></div>
			<ul class="con-icons">
				<li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
			<ul class="fb_icons">
				<li class="hvr-rectangle-out"><a class="fb" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="twit" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="goog" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="pin" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="drib" href="#"></a></li>
			</ul>
			<h3>Newsletter Sign up</h3>
			<div class="strip"></div>
			<form action="#" method="post">
				<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
				<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<input type="submit" value="Submit">
			</form>
		</div>
		<div class="col-md-6 contact-left wow fadeInRight animated animated" data-wow-delay="0.4s">
			<h2>Information</h2>
			<div class="strip"></div>
			<p class="para">At vero eos et accusamus et iusto odio dignissimos
			ducimus qui blanditiis praesentium voluptatum deleniti at
			que corrupti quos dolores et quas molestias excepturi sint
			occaecati cupiditate non provident, similique sunt.</p>
			<p class="copy-right">© 2016 Infirmary. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //contact -->
<!-- login -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
									
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form action="http://localhost:8080/elec5619/login" method="post">
											<div class="sign-in">
												<h4>User name :</h4>
												<input type="text" name="username" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">Forgot password?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="SIGNIN" >
											</div>
										</form>
									</div>
									
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- //login -->

</body>
</html>

