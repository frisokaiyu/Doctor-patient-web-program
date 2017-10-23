<%@page import="java.text.SimpleDateFormat"%>
<%@page import="au.edu.elec5619.domain.Evaluation"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.jfree.data.general.DefaultPieDataset"%>
<%@ page import="org.jfree.data.category.CategoryDataset" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="org.jfree.chart.JFreeChart"%>
<%@ page import="org.jfree.chart.plot.PiePlot"%>
<%@ page import="org.jfree.chart.ChartRenderingInfo"%>
<%@ page import="org.jfree.chart.servlet.ServletUtilities"%>
<%@ page import="org.jfree.chart.urls.StandardPieURLGenerator"%>
<%@ page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@ page import="org.jfree.chart.encoders.SunPNGEncoderAdapter"%>
<%@ page import="org.jfree.chart.StandardChartTheme"%>
<%@ page import="org.jfree.chart.ChartFactory"%>
<%@ page import="org.jfree.chart.plot.CategoryPlot"%>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.axis.CategoryAxis"%>
<%@ page import="org.jfree.chart.renderer.category.BarRenderer"%>
<%@ page import="org.jfree.chart.labels.StandardCategoryItemLabelGenerator"%>
<%@ page import="java.awt.Font"%>
<%@ page import="java.awt.Color"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

String title = "evalution";
String x = "time";
String y ="grade";
String grade ="grade";

ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
	DefaultCategoryDataset mDatasetline = new DefaultCategoryDataset();
	List<Evaluation> evaluationList = (List<Evaluation>)request.getAttribute("evaluationList");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (Evaluation evaluation : evaluationList) {
			mDatasetline.addValue(Double.parseDouble(evaluation.getGrade()), grade, sdf.format(evaluation.getCreatetime()));
		}
	
	StandardChartTheme mChartThemeline = new StandardChartTheme("CN");
	mChartThemeline.setLargeFont(new Font("黑体", Font.BOLD, 20));
	mChartThemeline.setExtraLargeFont(new Font("宋体", Font.PLAIN, 15));
	mChartThemeline.setRegularFont(new Font("宋体", Font.PLAIN, 15));
	ChartFactory.setChartTheme(mChartThemeline);
			
	JFreeChart mChartline = ChartFactory.createLineChart(
				title,
				x,
				y,
				mDatasetline,
				PlotOrientation.VERTICAL,
				true, 
				true, 
				false);
		
	CategoryPlot mPlotline = (CategoryPlot)mChartline.getPlot();
	mPlotline.setBackgroundPaint(Color.LIGHT_GRAY);
	mPlotline.setRangeGridlinePaint(Color.BLUE);//背景底部横虚线
	mPlotline.setOutlinePaint(Color.RED);//边界线
	
	//500是图片长度，300是图片高度
	String filenameline = ServletUtilities.saveChartAsPNG(mChartline, 900, 700, info, session);
	String graphURLline = request.getContextPath() + "/servlet/DisplayChart?filename=" + filenameline; 
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
							<li class="menu__item menu__item--current"><a href="indexDoc" class="menu__link">Basic information</a></li>
							<li class="menu__item"><a href="appoint" class="menu__link">Appointment timetable</a></li> 
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
	<form action="" class="form-horizontal" role="form">
		<h3 class="tittle">Basic information</h3>
		<div class="form-group">
				<label for="username" class="col-sm-2 control-lable">Name:</label>
				<div class="col-sm-4">
					<input type="text" value="${doctor.firstname }"  id="firstname" name="firstname" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="age" class="col-sm-2 control-lable">Age:</label>
				<div class="col-sm-4">
					<input type="text"  id="age" name="age" value="${doctor.age }" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="gender" class="col-sm-2 control-lable">Gender:</label>
				<div class="col-sm-4">
					<input type="text" value="${doctor.gender }"  id="gender" name="gender" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="dept" class="col-sm-2 control-lable">Department:</label>
				<div class="col-sm-4">
					<input type="text"  id="dept" name="dept" value="${doctor.dept }" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="col-sm-2 control-lable">Description:</label>
				<div class="col-sm-4">
					<textarea rows="10" cols="30" name="description" id="description">${doctor.description }</textarea>
				</div>
			</div>
		</form>
		<div>
			<button id="btnComfirm" type="button" class="btn btn-info" >confirm</button>
		</div>
		
		<div>
			<img src="<%= graphURLline %>" width=900 height=700 border=0 usemap="#<%= filenameline %>">
		</div>
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

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript">
$(function(){  
	
	
	$("#btnComfirm").click(function(){ 
		var firstname = $('#firstname').val();
		var age = $('#age').val();
		var gender = $('#gender').val();
		var dept = $('#dept').val();
		var description = $('#description').val();
		
		$.ajax({
	        type:"GET",
	        url :"updateDoctor",
	        data:{
	        	firstname:firstname,
	        	age:age,
	        	gender:gender,
	        	dept:dept,
	        	description:description
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

