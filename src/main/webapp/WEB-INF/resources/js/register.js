$(document).ready(function(){
	$("#signupsubmit").click(function(){
		if($("#username").val()&&$("#password").val()&&$("#firstname").val()&&$("#lastname").val()&&$("#age").val()
				&&$('input:radio:checked').val()&&$("#birthday").val()&&$("#phone").val()&&$("#email").val()){
			$.ajax({
			    url:"patients/",
			    type:"POST",    
			    async:true,
			    data:{"username":$("#username").val(),
				    "password":$("#password").val(),
				    "firstname":$("#firstname").val(),
				    "lastname":$("#lastname").val(),
				    "age":$("#age").val(),
				    "gender":$('input:radio:checked').val(),
				    "birthday":$("#birthday").val(),
				    "phone":$("#phone").val(),
				    "email":$("#email").val()},    
			    beforeSend:function(){
			    },
			    success:function(){
			    	alert("register succeed")
			    	window.location.href="/elec5619/"
			    },
			    complete:function(){
			    },
			    error:function(response){
			    	alert("user name has been used")
			    								
			    }
					})
		}
			})
		}
	
);


