<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Examination" %>
<%@ page import ="com.dao.DAO" %>
<%@ page import ="java.sql.*" %>
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display</title>
</head>
<body>
<%
try
{
	Examination e= new Examination();
	e.setexamname(request.getParameter("ex"));
	e.seteid(request.getParameter("eid"));
	e.setinstitutionid(Long.parseLong(request.getParameter("ini")));
	
	String q="insert into examination(eid,examname,institudeid)values('"+e.geteid()+"','"+e.getexamname()+"',"+e.getinstitutionid()+")";
	String qq= DAO.UpdateRecord(q);
	out.println(q);
	
	if (qq.equals("yes"))
	{
		
		session=request.getSession(true);

		session.putValue("eid",e.geteid());
		session.putValue("skltime", new java.util.Date());
		response.sendRedirect("Examination.jsp");	

		response.sendRedirect("Examination.jsp");	
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