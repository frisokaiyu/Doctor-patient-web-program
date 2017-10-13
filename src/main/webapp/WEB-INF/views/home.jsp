<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="<c:url value="/resources/js/search.js" />"></script>
<html>

<head>
 
</head>

<body >

	search: <input type="text" name="search" id="searchContent">
	<button id="search">search</button>
	<a href="http://localhost:8080/elec5619/disease/hypertension"> text</a>
	
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