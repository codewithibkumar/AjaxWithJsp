<%@ page import='java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String name = request.getParameter("name"); %>
<h2>Welcome <%= name %> </h2>
<table border='1'>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hibernetdb","root","pass");
	PreparedStatement ps = con.prepareStatement("select roll,name,course from student where name like ?");
	ps.setString(1,name+"%");
	ResultSet rs =ps.executeQuery();
	while(rs.next())
	{ %>
		<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3)%></td>
		</tr>
<%	}
	con.close();
%>
</table>
</body>
</html>