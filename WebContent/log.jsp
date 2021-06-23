<html>
<head>

<title>login </title>
</head>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="BS3/assets/css/login.css">
<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <h3> Login Form</h3> 
    </div>

    <!-- Login Form -->
   <form action="ChkLogin.jsp" method="post">
      <input type="text" id="login" class="fadeIn second" name="lid" placeholder="login">
      <input type="text" id="password" class="fadeIn third" name="pwd" placeholder="password">
     <div style="margin-left: 60px ;"> 
   <table>


					<tr>
						<td>Students</td>
						<th><input type="radio" name="btn" value="student"
							></th>
						<td>Admin</td>
						<th><input type="radio" name="btn" value="admin"
							></th>
							<td>Teacher</td>
						<th><input type="radio" name="btn" value="teacher"
							></th>
					</tr>

				</table>
			</div>	
			<%
					if (request.getSession().getAttribute("userStatus") != null) {
						System.out.println("its called");
						if (request.getSession().getAttribute("userStatus").equals("-1")) {
							System.out.println("now inside");
				%>

				<script>
					alert("username or password is incorrect");
				</script>
				<p style="color: rgba(255, 255, 51, 1); font-size: 17px">username
					or password is incorrect</p>
				<br>

				<%
					}
					}
				%>			
<input type="submit" class="fadeIn fourth" value="Log In">
				
   
   
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>