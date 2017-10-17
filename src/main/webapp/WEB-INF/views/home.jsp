<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src=<c:url value="/resources/js/search.js" />></script>
<script src=<c:url value="/resources/js/diagnosis.js" />></script>
<html>

<head>
 
</head>

<body >

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
  function Cal(form){
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

<form method=post>
your height(cm):<input type="text" name="height"><br>
  <br/>
your weight(kg):<input type="text" name="weight"><br>
  <br/>
<input type="button" value="start to calculate" onclick="Cal(this.form)">
  <br/>
  <br/>
  Your ideal weight:<input type="text" name="IW"><br/>
  <br/>
  Your BMI(body Mass Index):<input type="text" name="BMI">
</form>

symptom:<input type="text" name="sympotm" id = "sympotm">
<button id="diagnosis">diagnosis</button>
	
	
	
	
	
search: <input type="text" name="search" id="searchContent">
<button id="search">search</button>
	
<a href="http://localhost:8080/elec5619/disease/hypertension"> text</a>
	
<p>Disease Detils</p>
<ul id="list">
</ul>
	
	
	
<form>
	user name: <input type="text" name="username">
	password: <input type="text" name="password">
</form>
	<button onclick="signuppage()">sign up</button>
	<script type="text/javascript">
  	function signuppage(){
  		window.location.href="/elec5619/registration"
  			}
	</script>
</body>

<ul id ="list">
</ul>

</html>