<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Papermaster" %>
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
	Papermaster p= new Papermaster();
	p.setpapername(request.getParameter("pn"));
	p.setdate(request.getParameter("dt"));
	p.setexam (request.getParameter("se"));
	p.setexam_time(request.getParameter("ti"));
	
	p.setquestionno(Long.parseLong(request.getParameter("qn")));
	p.setsubjectname(request.getParameter("ss"));
	p. setquestionm(Long.parseLong(request.getParameter("qm")));
	p.setstart_time(request.getParameter("stt"));

	String q="insert into papermaster(papername,exam_time,subjectname,date,exam,questionno,questionm,start_time)values('"+p.getpapername()+"','"+p.getexam_time()+"','"+p.getsubjectname()+"','"+p.getdate()+"','"+p.getexam()+"',"+p.getquestionno()+","+p.getquestionm()+",'"+p.getstart_time()+"')";
	String qq= DAO.UpdateRecord(q);
	out.println(q);
	
	if (qq.equals("yes"))
	{
		out.println(" record insert");
		response.sendRedirect("papaermaster.jsp");	
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