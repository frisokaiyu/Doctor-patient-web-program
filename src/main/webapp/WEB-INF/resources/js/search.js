$(document).ready(function(){
	$("#search").click(function(){
			
		$.ajax({
			url:"disease/"+$("#searchContent").val(),
		    type: "GET", 
		    dataType:"json",
		    headers: {
		        Accept: "application/json; charset=utf-8"
		    },
		    success: function(msg) {
		        if (msg.data && msg.data.inviters) {
		            addFimg(msg.data.inviters);
		        }

		    }, 
		    error: function(xhr, textStatus) {
		        console.log(xhr);
		        console.log(textStatus)
		    }
		});
			})
		}
	
);


