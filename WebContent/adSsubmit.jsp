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
<title>student submit</title>
</head>

<body>
	<%
		try {
			String btn = request.getParameter("btn");
			if (btn.equals("student")) {
				StudentReg s = new StudentReg();
				s.setsname(request.getParameter("sname"));
				s.setsdob(request.getParameter("dob"));
				s.setaddress(request.getParameter("add"));
				s.setfathern(request.getParameter("fname"));
				s.setmobile(Long.parseLong(request.getParameter("mo")));
				s.setsemail(request.getParameter("eid"));
				s.sethigheredu(request.getParameter("he"));
				s.setbatchtime(request.getParameter("bt"));
				s.setamentor(request.getParameter("mn"));
				s.setsubjectname(request.getParameter("squ"));
				if (request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
					s.setspass(request.getParameter("pwd"));
					String q = "insert into studentreg(sname,sdob,address,fathern,batchtime,mobile,higheredu,semail,spass,subjectname)values('"
							+ s.getsname() + "','" + s.getsdob() + "','" + s.getaddress() + "','" + s.getfathern()
							+ "','" + s.getbatchtime() + "'," + s.getmobile() + ",'" + s.gethigheredu() + "','"
							+ s.getsemail() + "','" + s.getspass() + "','" + s.getsubjectname() + "')";
					String qq = DAO.UpdateRecord(q);
					out.println(q);

					if (qq.equals("yes")) {
						out.println(" record insert");
						response.sendRedirect("Addstudentreg.jsp");	
					} else {
						out.println("    not insert");
					}
				}
			}

			else if (btn.equals("teacher")) {
				Teacher t = new Teacher();
				t.setbatchy(request.getParameter("bt"));
				t.setemail(request.getParameter("eid"));
				t.settaddress(request.getParameter("add"));
				t.settdob(request.getParameter("dob"));
				t.settmobile(Long.parseLong(request.getParameter("mo")));
				t.settname(request.getParameter("sname"));
				if (request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
			t.setpassword(request.getParameter("pwd"));
			String s = "insert into teacher(tname,tdob,taddress,batchtime,mobile,temail,tpass)values('"
					+ t.gettname() + "','" + t.gettdob() + "','" + t.gettaddress() + "','" + t.getbatchy()
					+ "'," + t.gettmobile() + ",'" + t.getemail() + "','" + t.getpassword() + "')";
				
			String qq = DAO.UpdateRecord(s);
			out.println(s);

			if (qq.equals("yes")) {
				out.println(" record insert");
				//response.sendRedirect("admin.jsp");	
			} else {
				out.println("    not insert");
			}

			
			//response.sendRedirect("Addstudentreg.jsp");	
				}
			}
		} catch (Exception ex) {
			System.out.println(ex);
			out.println(ex);

		}
	%>




</body>
</html>