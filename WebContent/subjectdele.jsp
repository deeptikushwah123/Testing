<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Subject"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>subject</title>
</head>
<body>
	<%
		
		try {
			Subject s = new Subject();
			s.setsubjectn(request.getParameter("sbn"));
			String q = "delete from subject  where subjectname='" + s.getsubjectn() + "'";
			String re = DAO.UpdateRecord(q);
			out.println(q);
			if (re.equals("yes")) {
				request.getSession().setAttribute("userStatus", "-1");
				response.sendRedirect("subject.jsp");
				out.println("delete........");

			} else {
				out.println("not delete........");
			}
		} catch (Exception e) {
			out.println(e);
		}
	%>


</body>
</html>