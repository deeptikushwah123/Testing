<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.StudentReg"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%
		try {
			StudentReg s = new StudentReg();
			s.setsname(request.getParameter("sname"));
			s.setsdob(request.getParameter("dob"));
			s.setaddress(request.getParameter("add"));
			s.setfathern(request.getParameter("fname"));
			//s.setmobile(Integer.parseInt(request.getParameter("mo")));
			s.setsemail(request.getParameter("eid"));
			s.sethigheredu(request.getParameter("he"));
			s.setbatchtime(request.getParameter("bt"));
			s.setsubjectname(request.getParameter("squ"));

			String q = "update studentreg set sname='" + s.getsname() + "',sdob='" + s.getsdob() + "',address='"
					+ s.getaddress() + "',fathern='" + s.getfathern() + "',batchtime='" + s.getbatchtime()
					+ "',higheredu='" + s.gethigheredu() + "',sets='" + s.getsubjectname() + "'where semail='"
					+ s.getsemail() + "'";
			String res = DAO.UpdateRecord(q);
			out.println(q);
			if (res.equals("yes")) {
%>
<script>
					alert("update succesfully");
				</script>
				<p style="color: rgba(255, 255, 51, 1); font-size: 17px">updation compelete
					</p>
				<br>
<%
				
				out.println("update " + q);
			}

			else {
				out.println("not update");
			}
			response.sendRedirect("Displaystudent.jsp");
		} catch (Exception e) {
			out.println(e);
		}
	%>


</body>
</html>