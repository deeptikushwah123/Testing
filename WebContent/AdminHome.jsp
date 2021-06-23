<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />


<title>Admin HOME</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
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

h2 {
  color: #4ddbff;
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
							<p>Add Teachers</p>
					</a></li>
					<li><a href="techdisplay.jsp.jsp"> <i class="pe-7s-note2"></i>
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
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"></a>
                </div>
                <div class="collapse navbar-collapse">
                    
                    <ul class="nav navbar-nav navbar-right">
                    <h5>Deepti kushwah</h5>
                    
                        <li>
                           <a href="Logout.jsp">
                               logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                <h1></h1>
                </div>
            </div>
        </div>


		</div>


			
									<div class="footer">
										<hr>
										<div class="stats">
											<i class="fa fa-history"></i> Updated 3 minutes ago
										</div>
									</div>
								</div>
							


			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							
						</ul>
					</nav>
					
						
						</div>
			</footer>

	


</body>
<%
}
else{
	response.sendRedirect("log.jsp");
}
	
%>
<!--   Core JS Files   -->
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

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						demo.initChartist();

						$
								.notify(
										{
											icon : 'pe-7s-gift',
											message : "Welcome to <b>online examination</b> - Create Examination"

										}, {
											type : 'info',
											timer : 4000
										});

					});
</script>

</html>
