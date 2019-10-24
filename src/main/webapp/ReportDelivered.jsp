<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% ResultSet rs = (ResultSet) request.getAttribute("ResultSet"); %>
<%
while (rs.next())
	{
	
%>


<table>
<tr><th>Customer ID</th><th>Product ID</th><th>Result</th></tr>
<tr><td><%=rs.getInt(1)%></td>
<td><%=rs.getInt(2) %></td>
<td><%=rs.getInt(3) %></td>

</tr>

</table>
<%} %>
<center><h3> Your request has been successfully done<h3>
<h4> products will be delivered  soon......<h4></center>
</body>
</html>