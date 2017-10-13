<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8">
	<title>Registration</title>
	<link rel="stylesheet" href="http://static.runoob.com/assets/jquery-validation-1.14.0/demo/milk/milk.css">
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.mockjax.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
	<script src="<c:url value="/resources/js/validator.js" />"></script>
	<script src="<c:url value="/resources/js/register.js" />"></script>
	
</head>
<body>
<h1>Registration Form</h1>
<div id="main">
	<div id="content">
		<div class="content">
			<div id="signupbox">
				<div id="signuptab">
					<ul>
						<li id="signupcurrent">Sign up</li>
					</ul>
				</div>
				<div id="signupwrap">
					<form id="signupform" autocomplete="off" method="POST" action="">
						<table>
						<tr>
								<td class="label">
									<label id="lusername" for="username">User name</label>
								</td>
								<td class="field">
									<input id="username" name="username" type="text" value=""  placeholder="4-8 characters">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lpassword" for="password">Password</label>
								</td>
								<td class="field">
									<input id="password" name="password" type="password" value="" placeholder="password length 6-16">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lpassword_confirm" for="password_confirm">Confirm Password</label>
								</td>
								<td class="field">
									<input id="password_confirm" name="password_confirm" type="password" maxlength="50" value="">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lfirstname" for="firstname">First Name</label>
								</td>
								<td class="field">
									<input id="firstname" name="firstname" type="text" value="" maxlength="20">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="llastname" for="lastname">Last Name</label>
								</td>
								<td class="field">
									<input id="lastname" name="lastname" type="text" value="" maxlength="20">
								</td>
								<td class="status"></td>
							</tr>							
							<tr>
								<td class="label">
									<label id="lage" for="age">Age</label>
								</td>
								<td class="field">
									<input id="age" name="age" type="text" value="" maxlength="3">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lgender" for="gender">Gender</label>
								</td>
								<td class="field">
									Male<input  type="radio" id="gender_male" value="Male" name="gender" />
									Female<input  type="radio" id="gender_femle" value="Female" name="gender"  />
								</td>
								<td class="status"></td>
							</tr>
 							<tr>
								<td class="label">
									<label id="lbirthday" for="birthday">Birthday</label>
								</td>
								<td class="field">
									<input id="birthday" name="birthday" type="date" value="" placeholder="format:yyyy/mm/dd">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lphone" for="phone">Phone number</label>
								</td>
								<td class="field">
									<input id="phone" name="phone" type="text" value="" >
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lemail" for="email">Email Address</label>
								</td>
								<td class="field">
									<input id="email" name="email" type="text" value="" maxlength="150">
								</td>
								<td class="status"></td>
							</tr>
							<tr>
								<td class="label">
									<label id="lsignupsubmit" for="signupsubmit">Sign up</label>
								</td>
								<td class="field" colspan="2">
									<input id="signupsubmit" name="signup" type="button" value ="submit">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
