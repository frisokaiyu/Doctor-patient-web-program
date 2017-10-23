<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
							<li class="menu__item"><a href="appoint" class="menu__link">Appointment timetable</a></li> 
							<li class="menu__item menu__item--current"><a href="diagnosismk" class="menu__link">Diagnosis making</a></li> 
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
		<h3 class="tittle">Diagnosis making</h3>
		<table width="100%" >
			<tr>
				<td width="120px">Patient</td>
				<td>
					<select id="name">
						<option>please select</option>
						<c:forEach items="${apporderList }" var="apporder" >
							<option value="${apporder.patientid }" ${apporder.patientid == patientid ? "selected" :"" } >${apporder.patname }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Date</td>
				<td width="200px"><fmt:formatDate value="${apporder.createtime }" pattern="yyyy-MM-dd"/></td>
				<td width="120px">Time</td>
				<td><fmt:formatDate value="${nowdate }" pattern="HH:mm:ss"/></td>
			</tr>
			<tr>
				<td>Patient Info</td>
				<td colspan="3">
					<div>
						<label >Name:</label>
						${patient.username }
					</div>
					<div>
						<label >Age:</label>
						${patient.age }
					</div>
					<div >
						<label >Gender:</label>
						${patient.gender }
					</div>
					<div >
						<label >Bloodtype:</label>
						${patient.bloodtype }
					</div>
					<div >
						<label>Illness Description:</label>
						${patient.illnessdesc }
					</div>
				</td>
			</tr>
			<tr>
				<td>Diagnose</td>
				<td colspan="3"><textarea id="Diagnose" rows="10" cols="100"></textarea></td>
			</tr>
			<tr>
				<td>Medicine</td>
				<td colspan="3">
					<button  type="button" id="btnAdd" class="btn btn-default">+</button>
					<button  type="button" id="btnMinus" class="btn btn-default">-</button>
					
					<div id="medicineDiv">
						
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right"><button id="comfirm"  type="button" class="btn btn-info" style=" margin-right: 130px; ">confirm</button></td>
			</tr>
			
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
$(function(){  
	$("#name").change(function(){
		var $this = $(this);
		
		window.location.href = "diagnosismk?patientid="+$this.val();
		
	})
	$("#btnAdd").click(function(){ 
		$.ajax({
	        type:"GET",
	        url :"getAllMedicine",
	        data:{
	         
	        },
	        dataType:"json",
	        success:function(data){
	        	$("#medicineDiv").append(data.str);
	        }
	    });
		
	})
	
	$("#btnMinus").click(function(){ 
		$("#medicineDiv").children("div:last-child").remove();

	})
	
	$("#comfirm").click(function(){ 
		var medicines = $('.medicine');
		var medicineArr = new Array();
		for ( var i = 0; i < medicines.length; i++) {
			var a = $(medicines[i]).val();
			
			medicineArr.push(a);
			
		}
	
		$.ajax({
	        type:"POST",
	        url :"saveDiagnose",
	        data:{
	            diagnose:$("#Diagnose").val(),
	            medicine:medicineArr.toString(),
	            patientid:${empty patientid ? "0":patientid}
	        },
	        dataType:"json",
	        success:function(data){
	        	alert(data.msg);
	        }
	    });

	})
	
	
	
	
});  

function changeMedicine(obj){
	var $this = $(obj);
	var id = $this.val();
	
	$.ajax({
        type:"GET",
        url :"getMedicine",
        data:{
         id:id
        },
        dataType:"json",
        success:function(data){
        	$this.next().html(data.str);
        }
    });
}
</script>
</body>
</html>

