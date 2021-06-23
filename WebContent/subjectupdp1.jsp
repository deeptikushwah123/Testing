<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Subject"%>
<%@ page import="com.model.Examination"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update subject</title>
</head>
<body>
<%if(session.getAttribute("email")!=null){
	%>
	<%
		try {
			Subject s = new Subject();
			s.setsubjectn(request.getParameter("sn"));
			s.seteid(request.getParameter("en"));
			s.setdescrip(request.getParameter("des"));

			String q = "update subject set subjectname='" + s.getsubjectn() + "',eid='" + s.geteid() + "',descrit='"
					+ s.getdescrip() + "'where subjectname='" + s.getsubjectn() + "'";
			String res = DAO.UpdateRecord(q);
			out.println(q);
			if (res.equals("yes")) {
				

				response.sendRedirect("subject.jsp");
				out.println("update " + q);
			}

			else {
				out.println("not update");
			}

		} catch (Exception e) {
			out.println(e);
		}
	%>

<%
}
else{
	response.sendRedirect("log.jsp");
}
	
%>

</body>
</html>