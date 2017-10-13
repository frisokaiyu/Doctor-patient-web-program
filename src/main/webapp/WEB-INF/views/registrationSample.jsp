<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
 	<script src="<c:url value="/resources/js/register.js" />"></script>
</head>

<body >

<form id="signupform" Method ="post" action="">
	user name: <input id ="user_name" type="text" name="user_name"><br>
	
	password: <input id ="password" type="text" name="password"><br>
	
	confirm_password: <input id="confirm_password" type="text" name="confirm_password"><br>
	
	first name: <input id ="first_name" type="text" name="first_name"><br>
	
	last name: <input id ="last_name"type="text" name="last_name"><br>
	
	age: <input id="age" type="text" name="age"><br>
	
	gender: Male<input type="radio" name="gender" value="Male"> 
			Female<input type="radio" name="gender" value="Female"><br>
			
	birthday: <input id = "birthday" type="date" name="birthday"><br>
	
	phone number: <input id="phone" type="text" name="phone"><br>
	
	email: <input id="email" type="text" name="email">
	
	<input id="signupsubmit" type="button" value="signup">
</form>
	
</body>

</html>