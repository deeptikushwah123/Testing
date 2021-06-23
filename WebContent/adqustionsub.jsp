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


<%

try
{
	Questions q= new Questions();
	q.setsubjectname(request.getParameter("st"));
	//q.setquestionno(request.getParameter("qn"));
	q.setquestion(request.getParameter("qu"));
	q.setoption1(request.getParameter("opta"));
	q.setoption2(request.getParameter("optb"));
	q.setoption3(request.getParameter("optc"));
	q.setoption4(request.getParameter("optd"));
	q.setcorrectans(request.getParameter("cn"));
	
	
	
	String r="insert into question(question,option1,option2,option3,option4,correctans,subjectname)values('"+q.getquestion()+"','"+q.getoption1()+"','"+q.getoption2()+"','"+q.getoption3()+"','"+q.getoption4()+"','"+q.getcorrectans()+"','"+q.getsubjectname()+"')";
	String qq= DAO.UpdateRecord(r);
	out.println(r);
	
	if (qq.equals("yes"))
	{

		response.sendRedirect("addquestion.jsp");
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


<% 

%>

</body>
</html>