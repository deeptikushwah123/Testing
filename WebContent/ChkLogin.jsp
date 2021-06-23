<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.StudentReg"%>
<%@ page import="com.model.Teacher"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>loginchk</title>
</head>
<body>

	<%
		try {
			String btn = request.getParameter("btn");
			if (btn.equals("student")) {
				StudentReg s = new StudentReg();

				s.setsemail(request.getParameter("lid"));
				s.setspass(request.getParameter("pwd"));
				
				
				ResultSet rs = DAO.displayRecord("select* from studentreg where semail='" + s.getsemail()
						+ "' and spass='" + s.getspass() + "' ");
				if (rs.next()) {

					response.sendRedirect("shome.jsp");

						session = request.getSession(true);

					session.putValue("lid", s.getsemail());
					session.putValue("pwd", s.getspass());
					session.putValue("skltime", new java.util.Date());
					session.setAttribute("userStatus", "1");
					session.setAttribute("email", rs.getString("semail"));
					session.setAttribute("pwd", rs.getString("pwd"));

					session.setAttribute("subject", rs.getString(10));

				} else {

					request.getSession().setAttribute("userStatus", "-1");
					response.sendRedirect("log.jsp");

				}
			} else if (btn.equals("admin")) {

				String lid = request.getParameter("lid");
				String pwd = request.getParameter("pwd");
				if (lid.equals("deeptikush123@gmail.com") && pwd.equals("deepti7")) {
					session = request.getSession(true);

					session.putValue("lid", lid);
					session.putValue("skltime", new java.util.Date());
					session.setAttribute("lid", "lid");

					response.sendRedirect("AdminHome.jsp");

					

				} else {
					request.getSession().setAttribute("userStatus", "-1");
					response.sendRedirect("log.jsp");
					out.println("<font color=red>Either user name or password is wrong.</font>");

				}
			}

				else	if (btn.equals("teacher")) {
					Teacher t = new Teacher();
					t.setemail(request.getParameter("lid"));
					t.setpassword(request.getParameter("pwd"));
					ResultSet rs = DAO.displayRecord("select* from teacher where temail='" + t.getemail()
							+ "' and tpass='" + t.getpassword() + "' ");
					if (rs.next()) {
						
						
						
							session = request.getSession(true);
						session.putValue("email", t.getemail());
						session.putValue("skltime", new java.util.Date());
						session.setAttribute("email", rs.getString("temail"));
						response.sendRedirect("techome.jsp");
						
						
						out.println("<font color=red>Either </font>");

					} else {
						request.getSession().setAttribute("userStatus", "-1");
						response.sendRedirect("log.jsp");
						out.println("<font color=red>Either user name or password is wrong.</font>");
					}

				}

			
		} catch (Exception e) {
			out.println(e);
		}
	%>

</body>
</html>