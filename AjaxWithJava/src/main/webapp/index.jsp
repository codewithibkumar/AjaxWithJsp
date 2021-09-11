<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function showRecord()
{
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function()
	{
		//result section
		document.getElementById('result').innerHTML =xmlhttp.responseText;
	}
	xmlhttp.open("GET","showData.jsp",true);
	xmlhttp.send();
		
}
function greet(name)
{
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function()
	{
		//result section
		document.getElementById('result').innerHTML =xmlhttp.responseText;
	}
	xmlhttp.open("GET","greet.jsp?name="+name,true);
	xmlhttp.send();
}

</script>
</head>
<body>
<h1 align='center'>My Website</h1>
<hr/>
<input type='text' placeholder='enter your name' onkeyup='greet(this.value)' />
<button onclick='showRecord()'>To get data</button>
<p id='result'></p>
</body>
</html>