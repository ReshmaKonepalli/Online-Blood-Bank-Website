<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<title>Home</title>
</head>

<script>
	function sampleAjax() {

		$.ajax({
			type : "POST",
			url : "sampleAjax",
			contentType: "application/json",
			dataType : "json",
			success : function(response) {
				displayTheContent(response);
			},
		
			error : function(){
				alert("Error");
				//write whatever you want here
			}

		});

	}
	
	function displayTheContent(response){
		$("#displayDiv").empty();
		for(var i=0, l = response.length; i < l; i++){
			var user = response[i];
			$("#displayDiv").append("<li>"+user.fname+" "+user.lname+"</li>");
		}
	}
</script>
<body>
	<h1>
		<input type="submit" onclick="sampleAjax()" value="Click Me" />
	</h1>
	<div id="displayDiv"></div>
</body>
</html>
