<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Teacher"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display teacher</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="instylr/fontss/material-design-iconic-font/css/material-design-iconic-font.min.css">

<!-- STYLE CSS -->
<link rel="stylesheet" href="instylr/csss/style.css">
<link rel="stylesheet" href="instylr/csss/style.csss">
<link href="BS3/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="BS3/assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="BS3/assets/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="BS3/assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="BS3/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

<style>
 td {  
 padding :15px;
 
  border: 1px solid #ddd;
  text-align: left;
  font-size:10px;
}

table {
  border-collapse: collapse;
  width: 50%;
}

th {

border: 1px solid #ddd;
  text-align: left;
  padding :8px;
  font-size:15px;
}


.form {
	margin-left: 400px;
	margin-right: 400px;
}


</style>
</head>
<body>
<%if(session.getAttribute("lid")!=null){
	%>
  
<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="BS3/assets/img/sidebar-5.jpg">

			


			<div class="sidebar-wrapper">
				<div class="logo">
					<a  class="simple-text">
						Dashboard </a></div>

				<ul class="nav">
					<li class="active"><a href="teacher.jsp"> <i
							class="pe-7s-news-paper"></i>
							<p>Add Teacher</p>
					</a></li>
					<li><a href="techdisplay.jsp"> <i class="pe-7s-user"></i>
							<p>Teacher List</p>
					</a></li>
					<li><a href="studenta.jsp"> <i class="pe-7s-note2"></i>
							<p>Students List</p>
					</a></li>
					
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"></a>
					</div>
					<div class="collapse navbar-collapse">

<div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                             <i class="nc-icon nc-palette"></i>
                               <%
				String ssemail = (String) session.getAttribute("email");
				//out.println(semail);
				String qt = "select * from teacher where temail ='" + ssemail + "'";
				
				ResultSet rq = DAO.displayRecord(qt);

				if (rq.next()) {
					
					%>
					 <span class="d-lg-none"><%= rq.getString(1) %></span>
				
<%
				}
			%>
                                   </a>
                              
                            </li>
                            
                            </ul>


						<ul class="nav navbar-nav navbar-right">
							<li><a href="Logout.jsp"> logout </a></li>
						</ul>
					</div>
				</div>
				</div>
			</nav>

		
 <table style="margin-left: 300px ;" >
<%
try
{

%>


<%
out.println("<tr><th>Name</th><th>DOB</th><th>Address</th><th> Year Batch </th><th>Mobile</th><th>Email</th><th>password</th><th>Edit</th><th>Delete</th></tr>");				

String s= "select *from teacher";
ResultSet rs=DAO.displayRecord(s);
if(rs.next())
{
	do
	{
	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href=studentupde.jsp?eid="+rs.getString(6)+">Edit   </a></td><td><a href=studentde.jsp?eid="+rs.getString(6)+">X  </a></td></tr>");
	}
	while(rs.next());
	}
else
{
out.println("<h3 style: text-color=red;>Here is not any students recored</h3>");

}




}
catch(Exception e)
{
	out.println(e);
}

%>
</table>


</div>
			
			</div>
			<%
}
else{
	response.sendRedirect("log.jsp");
}
	
%>

<script src="BS3/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="BS3/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="BS3/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="BS3/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="BS3/text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="BS3/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="BS3/assets/js/demo.js"></script>


</body>
</html>