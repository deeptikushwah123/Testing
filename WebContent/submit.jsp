
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Answer"%>
<%@ page import="com.model.Questions"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>submit</title>
</head>
<body>
	<%
		try {
			int count;
			int idquestion = Integer.parseInt(request.getParameter("idquestion"));
			String semail = (String) session.getAttribute("lid");
			
			out.println(semail);
			String subject = (String) session.getAttribute("subject");
			
			String q = "select idquestion from question where subjectname = '" + subject + "'";
			ResultSet rs = DAO.displayRecord(q);
			if (rs.next()) {

				int g = rs.getInt("idquestion");

				out.println(idquestion);
				for (count = 1; count <= rs.getInt("idquestion"); count++)

					if (idquestion != g) {
						idquestion++;
						out.println(idquestion);
					} else {

						g++;
						out.println(idquestion);
						String userans = request.getParameter("ra" + count);
						out.println(userans);

						String s = "insert into answers(userans,idquestion,semail,subject)values('" + userans + "',"
								+ idquestion + ",'" + semail + "','"+subject +"')";
						String qq = DAO.UpdateRecord(s);
						out.println(s);

						if (qq.equals("yes")) {
							out.println(" record insert");
						} else {
							out.println(" not   insert");
						}
					}

			}
			//response.sendRedirect("result.jsp");
		} catch (Exception e) {
			out.println(e);
		}
	%>
</body>
</html>