<%@page import="au.edu.elec5619.utils.DateUtils"%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Medical System</title>
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

<!--start-date-piker-->
	<script src="js/jquery-ui.js"></script>
		<script>
			$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
			});
		</script>
<!--/End-date-piker-->
	<script src="js/responsiveslides.min.js"></script>
			<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->

<style type="text/css">
	table 
  {   border-collapse:   separate;   border-spacing:   20px;   } 
</style>
</head>
<body>

<div class="header-bottom ">
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
							<h1><a class="link link--nukun"><i></i>Medical System</a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item "><a href="indexDoc" class="menu__link">Basic information</a></li>
							<li class="menu__item menu__item--current"><a href="appoint" class="menu__link">Appointment timetable</a></li> 
							<li class="menu__item"><a href="diagnosismk" class="menu__link">Diagnosis making</a></li> 
							<li class="menu__item"><a href="passmodify" class="menu__link">Password modification</a></li> 
							<li class="menu__item"><a href="exitDoc" class="menu__link">Exit</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>

<!-- banner -->
<div class="banner">

				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
		<div  id="top" class="callbacks_container">
			
		</div>
		<div class="clearfix"></div>
</div>

<!-- team -->
<div class="ind-team">
	<div class="container">
		<h3 class="tittle">Appointment timetable</h3>
		<table width="100%" >
			<tr>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(0) %>')" class="btn btn-info"><%=DateUtils.getDate(0) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(1) %>')" class="btn btn-info"><%=DateUtils.getDate(1) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(2) %>')" class="btn btn-info"><%=DateUtils.getDate(2) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(3) %>')" class="btn btn-info"><%=DateUtils.getDate(3) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(4) %>')" class="btn btn-info"><%=DateUtils.getDate(4) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(5) %>')" class="btn btn-info"><%=DateUtils.getDate(5) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(6) %>')" class="btn btn-info"><%=DateUtils.getDate(6) %></button></td>
				<td><button  type="button" onclick="toDateAppo('doctorid=${doctorid}&date=<%=DateUtils.getDate(7) %>')" class="btn btn-info"><%=DateUtils.getDate(7) %></button></td>
			</tr>
			<tr>
				<td colspan="8">&nbsp;</td>
			</tr>
			<tr align="center"> 
				<td colspan="8"><h4>${date }</h4></td>
			</tr>
			<c:if test="${empty appoint}">
			
				<tr align="center">
					<td >Morning</td>
					<td colspan="3"><button onclick="comfirmappo(this,'time1=1&time1patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">8：00-9：00(available)</button></td>
					<td >Afternoon</td>
					<td colspan="3"><button onclick="comfirmappo(this,'time5=1&time5patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">1：00-2：00(available)</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time2=1&time2patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">9：00-10：00(available)</button></td>
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time6=1&time6patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">2：00-3：00(available)</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time3=1&time3patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">10：00-11：00(available)</button></td>
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time7=1&time7patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">3：00-4：00(available)</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time4=1&time4patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">11：00-12：00(available)</button></td>
					<td ></td>
					<td colspan="3"><button onclick="comfirmappo(this,'time8=1&time8patid=${sessionScope.patient.id}')"  type="button" class="btn btn-default" style="width: 200px">4：00-5：00(available)</button></td>
				</tr>
			</c:if>
			<c:if test="${!empty appoint}">
				<tr align="center">
					<td >Morning</td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time1patid}')" class="btn ${appoint.time1 == 1 ? '' : 'btn-default' }" style="width: 200px">8：00-9：00(${appoint.time1 == 1 ? 'reserved' : 'available' })</button></td>
					<td >Afternoon</td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time5patid}')" class="btn ${appoint.time5 == 1 ? '' : 'btn-default' }" style="width: 200px">1：00-2：00(${appoint.time5 == 1 ? 'reserved' : 'available' })</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time2patid}')" class="btn ${appoint.time2 == 1 ? '' : 'btn-default' }" style="width: 200px">9：00-10：00(${appoint.time2 == 1 ? 'reserved' : 'available' })</button></td>
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time6patid}')" class="btn ${appoint.time6 == 1 ? '' : 'btn-default' }" style="width: 200px">2：00-3：00(${appoint.time6 == 1 ? 'reserved' : 'available' })</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time3patid}')" class="btn ${appoint.time3 == 1 ? '' : 'btn-default' }" style="width: 200px">10：00-11：00(${appoint.time3 == 1 ? 'reserved' : 'available' })</button></td>
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time7patid}')" class="btn ${appoint.time7 == 1 ? '' : 'btn-default' }" style="width: 200px">3：00-4：00(${appoint.time7 == 1 ? 'reserved' : 'available' })</button></td>
				</tr>
				<tr align="center">
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time4patid}')" class="btn ${appoint.time4 == 1 ? '' : 'btn-default' }" style="width: 200px">11：00-12：00(${appoint.time4 == 1 ? 'reserved' : 'available' })</button></td>
					<td ></td>
					<td colspan="3"><button  type="button" onclick="comfirmappo(this,'patientid=${appoint.time8patid}')" class="btn ${appoint.time8 == 1 ? '' : 'btn-default' }" style="width: 200px">4：00-5：00(${appoint.time8 == 1 ? 'reserved' : 'available' })</button></td>
				</tr>
			</c:if>
		</table>
		
		<div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			
		</div>
		<div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			
		</div>
		<div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
<!-- team -->
<!-- capabilities -->
<div class="capacity">
	<div class="container">
		<div class="col-md-3 capabil_grid1 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
			
		</div>
		<div class="col-md-3 capabil_grid2 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
			
		</div>
		<div class="col-md-3 capabil_grid3 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
			
		</div>
		<div class="col-md-3 capabil_grid4 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
			
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //capabilities -->
<!-- contact -->
<div class="contact">
	<div class="container">
		
		<div class="col-md-6 contact-right wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
			
		</div>
		<div class="col-md-6 contact-left wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">

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

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript">
	function comfirmappo(obj,param){
		var $this = $(obj);
		if(!$this.hasClass("btn-default")){
			//reserved
			
			var url = "diagnosismk?"+param+"&doctorid=${doctorid}&date=${date}";
			window.location.href = url;
			  
		}
	}
	
	function toDateAppo(param){
		
		window.location.href = "appoint?"+param;
		
	}
</script>

</body>
</html>

