<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Subject" %>
<%@ page import ="com.dao.DAO" %>
<%@ page import ="java.sql.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
try
{
	
	Subject s= new Subject();
	s.setsubjectn(request.getParameter("sn"));
	
	s.seteid(request.getParameter("se"));
	s.setdescrip(request.getParameter("des"));
	
	String q="insert into subject(eid,subjectname,descrit)values('"+s.geteid()+"','"+s.getsubjectn()+"','"+s.getdescrip()+"')";
	String qq= DAO.UpdateRecord(q);
	out.println(q);
	
	if (qq.equals("yes"))
	{
		response.sendRedirect("subject.jsp");
		out.println(" record insert");
	}
	else
	{
		out.println("    not insert");
		
	}
	
}
	catch(Exception ex)
	{
	System.out.println(ex);
	out.println(ex);
	
	}
%>



</body>
</html>