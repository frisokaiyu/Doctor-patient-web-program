$(document).ready(function(){
	$("#signupsubmit").click(function(){
		
//		$("#signupform").attr("action", "patient/"+$("#username").val());
//		$("#signupform").submit();
		
		
	$.ajax({
    url:"patient/"+$("#username").val(),
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
    	alert(response);
    	alert("register succeed")
    },
    complete:function(){
    },
    error:function(response){
    	console.log(response.status + " " + response.statusText);
    	alert("register fail")
    }
		})
			})
		}
	
);


