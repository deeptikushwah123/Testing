<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.model.Questions" %>
    <%@ page import ="com.dao.DAO" %>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<h3>updation successfully done.....</h3>		
	
<%
String btn =request.getParameter("btn");
try
{
	HttpSession s=request.getSession();
	int idno = Integer.parseInt( s.getAttribute("idnumber").toString());
	out.println(idno);
	if(btn.equals("edit"))
	{
	
	Questions q= new Questions();
	q.setsubjectname(request.getParameter("st"));
	q.setquestionno(request.getParameter("qn"));
	q.setquestion(request.getParameter("qu"));
	q.setoption1(request.getParameter("opta"));
	q.setoption2(request.getParameter("optb"));
	q.setoption3(request.getParameter("optc"));
	q.setoption4(request.getParameter("optd"));
	q.setcorrectans(request.getParameter("cn"));
	
	String qq= "update question set question = '"+q.getquestion()+"',option1 ='"+q.getoption1()+"',option2='"+q.getoption2()+"',option3='"+q.getoption3()+"',option4='"+q.getoption4()+"' ,correctans='"+q.getcorrectans()+"',subjectname='"+q.getsubjectname()+"' where idquestion =" +idno;
	String res=DAO.UpdateRecord(qq);
	
	out.print(qq);
	
	if(res.equals("yes"))
	{
		
		
		out.println("updation succesfully done.....");
		response.sendRedirect("questionlist.jsp");	
	out.println("update "+qq);
	}


	else
	{
		out.println("not update");
	}
	}
	else if(btn.equals("delete"))
	{
		
String q="delete fram question where idquestion="+ idno+"";
String re= DAO.UpdateRecord(q);

if(re.equals("yes"))
{
	response.sendRedirect("questionlist.jsp");
	out.println("delete........");
	
}
else
{
	out.println("not delete........");
}
		
		
	}

}
catch(Exception ex)

{
out.println(ex);	
}
%>
</body>
</html>