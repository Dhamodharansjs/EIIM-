<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
  String Username=request.getParameter("Username");
  String Password=request.getParameter("Password");

  if(Username.equalsIgnoreCase("admin")&& Password.equalsIgnoreCase("Dhamudeepak@123")){
	response.sendRedirect("admin.html");
 }
  else
	
	response.sendRedirect("login.html");
	
%>

</html>