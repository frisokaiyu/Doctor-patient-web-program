$(document).ready(function(){
	$("#signupsubmit").click(function(){
		if($("#username").val()&&$("#password").val()&&$("#firstname").val()&&$("#lastname").val()&&$("#age").val()
				&&$('input:radio:checked').val()&&$("#birthday").val()&&$("#phone").val()&&$("#email").val()){
			$.ajax({
			    url:"patients/",
			    type:"POST",    
			    async:true,
			    dataType:"json",
			    data:{"username":$("#username").val(),
				    "password":$("#password").val(),
				    "firstname":$("#firstname").val(),
				    "lastname":$("#lastname").val(),
				    "age":$("#age").val(),
				    "gender":$('input:radio:checked').val(),
				    "birthday":$("#birthday").val(),
				    "phone":$("#phone").val(),
				    "email":$("#email").val(),
				    "bloodtype":$("#bloodtype").val(),
				    "illnessdesc":$("#illnessdesc").val()},    
			    beforeSend:function(){
			    },
			    success:function(response){
			    	var result = response.msg;
			    	if(result=="registered")
			    	{
				    	alert("register succeed")
				    	window.location.href="http://localhost:8080/elec5619/"
			    	}
			    	else
			    	{
			    		alert("user name has been used")
			    	}
			    },
			    complete:function(){
			    },
			    error:function(response){
			    	
			    								
			    }
					})
		}
			})
		}
	
);


