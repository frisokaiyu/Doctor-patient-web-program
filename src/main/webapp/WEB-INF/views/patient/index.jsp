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
<title>Medical Appointment System | Basic Information :: Patient</title>
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
<!-- Top -->
<div class="header">
	<div class="container">
		<div class="header_left">
			<ul>
				<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
		</div>
		<div class="header_left" align="right">
			<ul>
				<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Hello, ${patient.username }</li>
			</ul>
		</div>
	</div>
</div>
<!-- //Top -->
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
							<li class="menu__item menu__item--current"><a href="indexPat" class="menu__link">Basic Information</a></li>
							<li class="menu__item"><a href="selectdept" class="menu__link">Appointment</a></li>
							<li class="menu__item"><a href="appointmentRec" class="menu__link">Recent Appointment Record</a></li> 
							<li class="menu__item"><a href="medicalRec" class="menu__link">Medical Record</a></li>
							<li class="menu__item"><a href="passmodifyPat" class="menu__link">Password Modification</a></li>  
							<li class="menu__item"><a href="exitPat" class="menu__link">Exit</a></li>
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
		<h3 class="tittle">Basic Information</h3>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-lable">Username:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.username }" readonly="readonly" id="username" name="username" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-lable">Firstname:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.firstname }"  id="firstname" name="firstname" class="form-control"/>
				</div>
			</div>
			
			<div class="form-group">
				<label for="username" class="col-sm-2 control-lable">Lastname:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.lastname }" id="lastname" name="lastname" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="age" class="col-sm-2 control-lable">Age:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.age }" id="age" name="age" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="gender" class="col-sm-2 control-lable">Gender:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.gender }" readonly="readonly" id="gender" name="gender" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="bloodtype" class="col-sm-2 control-lable">Blood Type:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.bloodtype }" id="bloodtype" name="bloodtype" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="phone" class="col-sm-2 control-lable">Phone:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.phone}" id="phone" name="phone" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-2 control-lable">Email:</label>
				<div class="col-sm-4">
					<input type="text" value="${patient.email}" id="email" name="email" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="col-sm-2 control-lable">illness Description:</label>
				<div class="col-sm-4">
					<textarea rows="10" cols="47" name="illnessdesc" id="illnessdesc">${patient.illnessdesc }</textarea>
				</div>
			</div>
		</form>
		<div>
			<button id="btnComfirm" type="button" class="btn btn-info" >confirm</button>
		</div>
	</div>
</div>
<!-- team -->

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript">
$(function(){  
	
	
	$("#btnComfirm").click(function(){ 
		var firstname = $('#firstname').val();
		var lastname = $('#lastname').val();
		var age = $('#age').val();
		var bloodtype = $('#bloodtype').val();
		var phone = $('#phone').val();
		var email = $('#email').val();
		var illnessdesc = $('#illnessdesc').val();
		
		$.ajax({
	        type:"POST",
	        url :"updatePatient",
	        data:{
	        	firstname:firstname,
	        	lastname:lastname,
	        	age:age,
	        	bloodtype:bloodtype,
	        	phone:phone,
	        	email:email,
	        	illnessdesc:illnessdesc
	        },
	        dataType:"json",
	        success:function(data){
	        	alert(data.msg);
	        	location.reload();
	        }
	    });

	})
	
	
});  
</script>
</body>
</html>

