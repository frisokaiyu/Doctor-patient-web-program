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
							<li class="menu__item"><a href="appoint" class="menu__link">Appointment timetable</a></li> 
							<li class="menu__item"><a href="diagnosismk" class="menu__link">Diagnosis making</a></li> 
							<li class="menu__item menu__item--current"><a href="passmodify" class="menu__link">Password modification</a></li> 
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
		<form action="" class="form-horizontal" role="form">
			<h3 class="tittle">Password modification</h3>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-lable">username:</label>
				<div class="col-sm-4">
					<input type="text" value="${sessionScope.doctor.username }" readonly="readonly" id="username" name="username" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="initPwd" class="col-sm-2 control-lable">initial password:</label>
				<div class="col-sm-4">
					<input type="password"  id="initPwd" name="initPwd" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="newpassword" class="col-sm-2 control-lable">new password:</label>
				<div class="col-sm-4">
					<input type="password"  id="newpassword" name="newpassword" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="repassword" class="col-sm-2 control-lable">password doublecheck:</label>
				<div class="col-sm-4">
					<input type="password"  id="repassword" name="repassword" class="form-control"/>
				</div>
			</div>
		</form>
		
		<div>
			<button id="btnComfirm" type="button" class="btn btn-info" >confirm</button>
		</div>
		
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

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript">
$(function(){  
	
	
	$("#btnComfirm").click(function(){ 
		var initPwd = $('#initPwd').val();
		var newPassword = $('#newpassword').val();
		var rePassword = $('#repassword').val();
		if(!initPwd){
			alert("please input initial password");
			return;
		}
		if(!newPassword){
			alert("please input new password");
			return;
		}
		if(!rePassword){
			alert("please input double check password");
			return;
		}
		if(newPassword != rePassword){
			alert("new password not equals double check password");
			return;
		}
	
		$.ajax({
	        type:"POST",
	        url :"comfirmPwdModify",
	        data:{
	            newPassword:newPassword,
	            rePassword:rePassword,
	            initPwd:initPwd
	        },
	        dataType:"json",
	        success:function(data){
	        	alert(data.msg);
	        }
	    });

	})
	
	
	
	
});  
</script>
</body>
</html>

