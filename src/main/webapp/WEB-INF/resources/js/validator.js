$(document).ready(function() {
		// validate signup form on keyup and submit
	
		var validator = $("#signupform").validate({
			rules: {
				firstname: "required",
				lastname: "required",
				username: {
					required: true,
					minlength: 4,
					maxlength:8,
				},
				password: {
					required: true,
					minlength: 6,
					maxlength: 16
				},
				password_confirm: {
					required: true,
					minlength: 6,
					maxlength: 16,
					equalTo: "#password"
				},
				age:{
					required:true,
					digits:true
				},
				gender:"required",
				birthday: "required",
				phone:{
					required:true,
					digits:true
				},
				email: {
					required: true,
					email: true,
				},
				
			},
			messages: {
				firstname: "Enter your firstname",
				lastname: "Enter your lastname",
				username: {
					required: "Enter a username",
					minlength: jQuery.validator.format("Enter at least {0} characters"),
					maxlength: $.validator.format( "Please enter no more than {0} characters." ),
					remote: jQuery.validator.format("{0} is already in use")
				},
				password: {
					required: "Provide a password",
					minlength: jQuery.validator.format("Enter at least {0} characters")
				},
				password_confirm: {
					required: "Repeat your password",
					minlength: jQuery.validator.format("Enter at least {0} characters"),
					equalTo: "Enter the same password as above"
				},
				birthday: {
					required: "provide your birthday",
				},
				gender:{
					required: "choose your gender"
				},
				age:{
					required: "Enter your age",
					digits: "Please enter only digits"
				},
				phone:{
					required: "provide your phone number",
					digits: "Please enter only digits"
				},
				email: "Please enter a valid email address.",
			},
			// the errorPlacement has to take the table layout into account
			errorPlacement: function(error, element) {
				if (element.is(":radio"))
					error.appendTo(element.parent().next());
				else if (element.is(":checkbox"))
					error.appendTo(element.next());
				else
					error.appendTo(element.parent().next());
			},
			// set this class to error-labels to indicate valid fields
			success: function(label) {
				// set &nbsp; as text for IE
				label.html("&nbsp;").addClass("checked");
			},
			highlight: function(element, errorClass) {
				$(element).parent().next().find("." + errorClass).removeClass("checked");
			}
		});
});