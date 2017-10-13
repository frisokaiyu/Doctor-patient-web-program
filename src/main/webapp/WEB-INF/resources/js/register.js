$(document).ready(function(){
	$("#signupsubmit").click(function(){	
		
		// register patient
	$.ajax({
    url:"patients",
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
    success:function(response){
    	alert("register succeed");
    	window.location.href="http://localhost:8080/elec5619/"
    },
    complete:function(){
    },
    error:function(response){
    	alert("please register again");
    }
		})
		

		
			})
		}
	
);


