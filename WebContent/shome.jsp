
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.StudentReg"%>

<%@ page import="com.model.Questions"%>

<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="BS3/assets/img/favicon.ico">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Home</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="BS3/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="BS3/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
    <link href="BS3/assets/css/demo.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/google/code-prettify/master/loader/prettify.css">
    <link href="BS3/documentation/css/documentation.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Grand+Hotel|Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <link href="BS3/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<style>
h3{

color:white;
}

</style>
<script>
	function startTimer(duration, display) {
		var timer = duration, minutes, seconds;
		setInterval(function() {
			minutes = parseInt(timer / 60, 10)
			seconds = parseInt(timer % 60, 10);
			minutes = minutes < 10 ? "0" + minutes : minutes;
			seconds = seconds < 10 ? "0" + seconds : seconds;
			display.textContent = minutes + ":" + seconds;
			if (--timer < 0) {
				timer = duration;
				var url = "start_exam1.jsp";
				window.location = url;
			}
		}, 1000);
	}
	window.onload = function() {
		var fiveMinutes = 60 * 5, display = document.querySelector('#time');
		startTimer(fiveMinutes, display);
	};
</script>

</head>

<body>



<div class="header-wrapper">
        <nav class="navbar navbar-transparent navbar-fixed-top" role="navigation" color-on-scroll>
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              
                   <div class="logo-container">
                        <div>
				 <h3 id="time">05:00</h3>
			</div>
                        
                    </div>
                    
             
            </div>

            
            <div class="collapse navbar-collapse">
              
                <ul  class="nav navbar-nav navbar-right">
                    
               
                    
              <%
				String ssemail = (String) session.getAttribute("lid");
				//out.println(semail);
				String qt = "select * from studentreg where semail ='" + ssemail + "'";
				
				ResultSet rq = DAO.displayRecord(qt);

				if (rq.next()) {
					
					%>
					
				<h3 ><%= rq.getString(1) %>  </h3>
<%
				}
			%>
                  
               </ul>

            </div>
          </div><!-- /.container-fluid -->
        </nav>

        <div class="header" style="background-image: url('BS3/assets/img/full-screen-image-3.jpg');
">
            <div class="filter"></div>
            <div class="title-container text-center">
                    <h1>welcome </h1>
                    <h3 class="category">to</h3>
                    <h4 class="description text-center">Online Examination</h4>
                    <a href="start_exam1.jsp" class="btn btn-neutral btn-lg btn-round btn-fill" >Start</a>
            </div>
        </div>
</div>




<footer class="footer footer-demo">
	<div class="container">
		<nav class="pull-left">
			
		</nav>
		
		
	</div>
</footer>
</body>
	<!--   Core JS Files   -->
	<script src="BS3/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="BS3/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="BS3/assets/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="BS3/assets/js/bootstrap-notify.js"></script>

	<!--  Google Maps Plugin    -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

	<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="BS3/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="BS3/assets/js/demo.js"></script>
</html>
