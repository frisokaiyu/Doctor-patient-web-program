<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
							<h1><a class="link link--nukun"><i></i>Medical System</a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil links" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item "><a href="index" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="about" class="menu__link">About</a></li> 
							<li class="menu__item menu__item--current"><a href="diagnosis" class="menu__link">Diagnosis</a></li> 
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
<div class="typrography">
	 <div class="container">
	      <h3 class="tittle">Diagnosis</h3>
			<div class="grid_3 grid_4 wow fadeInLeft animated" data-wow-delay=".5s">
			
			<h3 class="bars">BMI calculator</h3>

<script>			
  var BMI={};
 BMI.getBMI=function(a,b){
    var bmi=b/((a/100)*(a/100));
    return bmi;
  };
  BMI.idealweight=function(a){
    var x=(a-100)*0.9;
    return x;
  };
  function calculate(form){
    var a=eval(form.height.value);
    var b=eval(form.weight.value);
    var bmi=eval(form.BMI.value);
    var bmiValue =BMI.getBMI(a,b);
    BMI.disp_alert(bmiValue );
    form.IW.value=BMI.idealweight(a);
    form.BMI.value= bmiValue ;
  }
  BMI.disp_alert = function(bmi){
    if (bmi < 18.5)
    {
      alert("you are so slim, treat yourself");
    }
    else if (bmi >= 18.5 && bmi < 25)
    {
      alert("your weight is normal, keep going");
    }
    else if (bmi >= 25 && bmi< 30)
    {
      alert("you are overweight, please be careful");
    }
    else
    {
      alert("dude, lose weight!!!");
    }
  }
</script>

<div class="input-group">
 	<h2>BMI Categories:</h2>
 	<ul>
 		<li>Underweight = < 18.5</li>
 		<li>Normal weight = 18.5 - 24.9</li>
 		<li>Overweight = 25 - 29.9</li>
 		<li>Obesity = BMI of 30 or greater</li>
 	</ul>
</div>

<form id="bmiForm" method="POST">
<div class="input-group">
  <span class="input-group-addon" id="height">Height(cm)</span>
  <input type="text" class="form-control" placeholder="only number" aria-describedby="basic-addon1" name = "height">
</div>

<div class="input-group">
  <span class="input-group-addon" id="weight">Weight(kg)</span>
  <input type="text" class="form-control" placeholder="only number" aria-describedby="basic-addon1" name = "weight">
</div>

<div class="input-group">
 <button class="btn btn-default" type="button" onclick="calculate(this.form)">start to calculate!</button>
</div>

<div class="input-group">
  <span class="input-group-addon" id="ideal weight" >Your ideal weight</span>
  <input type="text" class="form-control" aria-describedby="basic-addon1" name ="IW">
</div>

<div class="input-group">
  <span class="input-group-addon" id="ideal weight" >Your BMI(body Mass Index):</span>
  <input type="text" class="form-control" aria-describedby="basic-addon1" name="BMI">
</div>

</form>


<h3 class="bars">Simple diagnosis by symptom</h3>
    <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" id="symptomButton">Go!</button>
      </span>
      <input type="text" class="form-control" placeholder="type in your symptom" id="symptomContent">
    </div>
    
    <ul id ="ullist"></ul>
    <script>
    $("#symptomButton").click(function(){
    	$.ajax({
		    url:"symptom/"+$("#symptomContent").val(),
		    type:"GET",    
		    async:true,
		    data:{"symptom":$("#symptomContent").val()},    
		    beforeSend:function(){
		    },
		    success:function(res){     
                var html='';    
                for(var i=0;i<res.length;i++){  
                	html+="Disease "+i;
                	html+="<li class='list-group-item'>Disease name:   "+res[i].name+"</li>"
                	html+="<li class='list-group-item'>Cause:   "+res[i].cause+"</li>"
                	html+="<li class='list-group-item'>Symptom:    "+res[i].symptom+"</li>"
                	html+="<li class='list-group-item'>Precaution:     "+res[i].precaution+"</li>"
                	html+="<li class='list-group-item'>Treatment:    "+res[i].treatment+"</li>"
                	
          /* 		  <li class="list-group-item">Disease name: ${requestScope.disease.name}</li>
        		  <li class="list-group-item">Cause: ${requestScope.disease.cause}</li>
        		  <li class="list-group-item">Symptom: ${requestScope.disease.symptom}</li>
        		  <li class="list-group-item">precaution: ${requestScope.disease.precaution}</li>
        		  <li class="list-group-item">treatment: ${requestScope.disease.treatment}</li>
        		  
                    html+="<li data-id="+res[i].name+">"+res[i].name+"</li>" 
                    html+="<li data-id="+res[i].cause+">"+res[i].cause+"</li>"
                    html+="<li data-id="+res[i].symptom+">"+res[i].symptom+"</li>"
                    html+="<li data-id="+res[i].precaution+">"+res[i].precaution+"</li>"
                    html+="<li data-id="+res[i].treatment+">"+res[i].treatment+"</li>" */
                }  
                  
                  
                $("#ullist").html(html)  
		    },
		    complete:function(){
		    },
		    error:function(response){
		    	alert("can not find diseases with"+$("#symptomContent").val())				
		    }
				})
      })

    </script>
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
										<form action="<%=path %>/login" method="post">
											<div class="sign-in">
												<h4>User name :</h4>
												<input type="text" name="username" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" name="password"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<input type="radio" name="type" value="1" checked="checked">patient<input type="radio" name="type" value="2">doctor
												<br>
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

