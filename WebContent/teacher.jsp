
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Teacher</title>
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
.form {
	margin-left: 70px;
	margin-right: 40px;
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
						Dashboard </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="teacher.jsp"> <i
							class="pe-7s-user"></i>
							<p>Add teachers</p>
					</a></li>
					<li><a href="techdisplay.jsp"> <i class="pe-7s-note2"></i>
							<p>Teachers list</p>
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


						<ul class="nav navbar-nav navbar-right">
							<li><a href="Logout.jsp"> logout </a></li>
						</ul>
					</div>
				</div>
			</nav>



			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Teachers </h4>
								</div>
								<div class="card-body">



									<form class="form" action="adSsubmit.jsp" method="post">
									
										<div class="row">



											<div class="form-group">
												<div class="col-md-4 pl-1">
													<label for="">Teacher Name:</label> <input type="text"
														name="sname" placeholder="Enter name" class="form-control"
														required>
												</div>
												<div class="col-md-4 pl-1">
													<label for="">Date of birth:</label> <input type="date"
														name="dob" placeholder="Enter date of birth"
														class="form-control" required>
												</div>
											</div>
											</div>
											<div class="row">
												<div class="form-group">

                                                 <div class="col-md-4 pl-1">
													<label for=""> MObile no </label> <input type="number"
														name="mo" placeholder="Enter mobile number"
														class="form-control" required> 
													
													</div>
													<div class="col-md-4 pl-1">	
														
														<label for="">
														Select Batch Year</label> <select class="form-control" id="ques"
														name="bt" required>
														<option disabled="disabled" selected="selected">select</option>
														<option value="2020">2020</option>
														<option value="2019">2019</option>
														<option value="2018">2018</option>
														<option value="2017">2017</option>
														<option value="2016">2016</option>
														<option value="2015">2015</option>
													</select>
												</div>
</div>

											</div>
											<div class="row">
												<div class="form-group">
                                                  <div class="col-md-4 pl-1">
													<label for="">Address</label> <input type="textarea row=3 "
														name="add" placeholder="Enter address"
														class="form-control" required>
														</div>
														
														<div class="col-md-4 pl-1">
														
														
														 <label for="">
														Email</label> <input type="email" name="eid"
														placeholder="Enter email" class="form-control" required>

												</div>
											</div>
											</div>
											<div class="row">
											
												<div class="form-group">
                                                 <div class="col-md-4 pl-1">
													<label for="">password:</label> <input type="password"
														name="pwd" placeholder="Enter re-password"
														class="form-control" onsubmit="return matchpass()"
														required>
														</div> 
														<div class="col-md-4 pl-1">
														<label for="">Re-Password </label> <input
														type="password" name="rpwd" placeholder="Enter password"
														onsubmit="return matchpass()" class="form-control"
														required>
                                              </div>
										   </div>
										</div>
											<div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
												<label> <input type="checkbox"> I accept the
													Terms of Use & Privacy Policy. <span class="checkmark"></span>
												</label>
											</div>
											</div>
											</div>
											
											<button type="submit" class="btn btn-info btn-fill pull-right">Register now</button>
                                        <div class="clearfix"></div>
												
										
										</form>
								
					</div>
					</div>
					</div>
					</div>
					</div>
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