$(document).ready(function(){
	$("#search").click(function(){
			
		$.ajax({
			url:"symptom/"+$("#sympotm").val(),
		    type: "GET", 
		    dataType:"json",
		    headers: {
		        Accept: "application/json; charset=utf-8"
		    },
		    success: function(data) {
		    	$("#list").find("li").remove(); 
		    	var name = $("<li>"+data.name+"</li>")
		    	var cause = $("<li>"+data.cause+"</li>")
		    	var symptom = $("<li>"+data.symptom+"</li>")
		    	var precaution = $("<li>"+data.precaution+"</li>")
		    	var treatment = $("<li>"+data.treatment+"</li>")
		    	$("#list").append(name)
		    	$("#list").append(cause)
		    	$("#list").append(symptom)
		    	$("#list").append(precaution);
		    	$("#list").append(treatment)
		    }, 
		    error: function() {
		    	$("#list").find("li").remove(); 
		    	var error = $("<li>"+"disease is not found"+"</li>");
		    	$("#list").append(error);
		    }});
			})
		}
	
);


