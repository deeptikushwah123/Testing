<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Examination" %>
<%@ page import ="com.dao.DAO" %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="instylr/fontss/material-design-iconic-font/css/material-design-iconic-font.min.css">

<!-- STYLE CSS -->

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

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 70%;
}

th, td {
  padding: 15px;
}
.form {
	margin-left: 80px;
	margin-right: 80px;
}


</style>
</head>
<body>
<%if(session.getAttribute("email")!=null){
	%>
  
<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="BS3/assets/img/sidebar-5.jpg">

			


			<div class="sidebar-wrapper">
				<div class="logo">
					<a  class="simple-text">
						Dashboard </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="addquestion.jsp"> <i
							class="pe-7s-news-paper"></i>
							<p>Add question</p>
					</a></li>
					<li><a href="Addstudentreg.jsp"> <i class="pe-7s-user"></i>
							<p>Add Students</p>
					</a></li>
					<li><a href="Displaystudent.jsp"> <i class="pe-7s-note2"></i>
							<p>Students List</p>
					</a></li>
					<li><a href="questionlist.jsp"> <i class="pe-7s-note2"></i>
							<p>Questions Bank </p>
					</a></li>
					<li><a href="papaermaster.jsp"> <i class="pe-7s-news-paper"></i>
							<p>Paper Master</p>
					</a></li>
					<li><a href="Examination.jsp"> <i class="pe-7s-news-paper"></i>
							<p>Examination</p>
					</a></li>
					<li><a href="subject.jsp"> <i class="pe-7s-news-paper"></i>
							<p>Subject</p>
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


<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Exam </h4>
								</div>
								<div class="card-body">


		
		

				<form class="form" action="examsubmit.jsp" method="post">
					
                                
						<div class="col-md-12">
							<label for=""> Exam Name </label>
							<input type="text" name="ex"  placeholder="Enter exam name." class="form-control" maxlength="65435"required>
						
        
      </div>
      
						<div class="col-md-12">
							<label for=""> Exam_id </label>
							<input type="text" name="eid"  placeholder="Enter Exam_id." class="form-control" maxlength="65435"required>
						</div>
					
					<div class="col-md-12">
							<label for=""> Institution_id </label>
							<input type="text" name="ini"  placeholder="Enter Institution_id ." class="form-control" maxlength="65435"required>
						</div>
    <button type="submit" class="btn btn-info btn-fill pull-right"> Save now</button>
                                        <div class="clearfix"></div>
												
   
    
    </form>
    </div>
    </div>
    </div>
    </div>
    </div>
    
    
  
                                    <table  style="margin-left: 30px ;">
<%
try
{
			
out.println("<caption><h1>Examination</h1></caption>");
out.println("<tr><th>sno.</th><th>Exam_id</th><th>Exam_name</th><th>Intitutio_id</th></tr>");				
String q="select * from examination ";

ResultSet rs = DAO.displayRecord(q);
if(rs.next())
{
	

		do
		{
	out.println("<tr><td></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
		}
		while(rs.next());
		}
else
{
	out.println("record not display");
}


out.println("</table>");
out.println("</center>");		

//response.sendRedirect("SpkeeperHome.jsp");	

}
catch(Exception ex)
{
out.println("Error.."+ex);	

}
%>


</table>
</div>
<div class="footer">
				<hr>
				</div>




			<footer class="footer">
				<div class="container-fluid">
					


				</div>
			</footer>
		
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