<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.model.StudentReg" %>
    <%@ page import ="com.dao.DAO" %>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete subject</title>
</head>
<body>
<%

try
{
	StudentReg s= new StudentReg();
	s.setsemail(request.getParameter("eid"));
	String  q="delete from studentreg  where semail='"+s.getsemail()+"'";
	String re= DAO.UpdateRecord(q);
	out.println(q);
	if(re.equals("yes"))
	{
		response.sendRedirect("Displaystudent.jsp");
		out.println("delete........");
		
	}
	else
	{
		out.println("not delete........");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>