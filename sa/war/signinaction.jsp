<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Log In Samutprakarn</title>
<%
String strUsername = "admin";
String strPassword = "1234";
String strName = "Admin";	

String username = request.getParameter("username");
String password = request.getParameter("password");
	
out.println("<h1>Welcome to Samutprakarn</h1>");
if (username.equals(username) && password.equals(password)) 
{
	out.println("ยินดีต้อนรับสู่จังหวัดสมุทรปราการ");	
	session.setAttribute("username_ses" ,username);  //เก็บ username ไว้ใน  sessin oject
	session.setAttribute("name_ses" ,strName);
	response.sendRedirect("index.jsp");
}else
{
	out.println("กรุณาตรวจสอบ username และ password อีกครั้ง!!!");
}
%>
 </head>

<input onclick="history.go(-1);return true;" type="submit" value="back" >

	
</body>
</html>