<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	function todo()
	{
		alert('Welcome to Javascript');
		document.getElementById('result').innerHTML = "Welcome to Java Script";
	}	
	function print()
	{
		var name = document.getElementById('tname').value;
		//alert("Welcome "+name);
		document.getElementById('result').innerHTML = "Welcome "+name;
	}
	
</script>
</head>
<body>
<input id='tname' type='text' name='tname' placeholder='enter your name' />
<button onclick='print()'>Print my name</button>
<button onclick='todo()'>Click me</button>
<p id='result'></p>
</body>
</html>