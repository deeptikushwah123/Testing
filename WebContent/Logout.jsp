<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
</head>
<body>
<% 

try
{
	
session=request.getSession(false);

String email=session.getValue("lid").toString();
String semail=session.getValue("semail").toString();
String temail=session.getValue("temail").toString();
String skltime=session.getValue("skltime").toString();
session.invalidate();


}
catch(Exception ex)
{
out.println("Error: "+ex);	

response.sendRedirect("log.jsp");
}

%>
</body>
</html>