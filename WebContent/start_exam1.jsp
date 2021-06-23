<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.StudentReg"%>

<%@ page import="com.model.Questions"%>
<%@ page import="java.util.*"%>

<%@ page import="com.dao.DAO"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<style>
{box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 20px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}

.form {
	margin-left: 80px;
	margin-right: 50px;
}

.button {
  background-color: #1DC7EA; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
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
				var url = "submit.jsp";
				window.location = url;
			}
		}, 1000);
	}
	window.onload = function() {
		var fiveMinutes = 60 * 30, display = document.querySelector('#time');
		startTimer(fiveMinutes, display);
	};
</script>

</head>

<body>
	<div class="header">
  
  <div class="header-right">
    <%
				String semail = (String) session.getAttribute("lid");

				String name = "select * from studentreg where semail ='" + semail + "'";
				//out.println(semail);
				ResultSet r = DAO.displayRecord(name);

				if (r.next()) {
					out.println("<h3 style= color:  #1a5ed1;>" + r.getString(1) + "</h3>");

				}
			%>
			

    <div>
				<br> <span id="time">30:00</span>
			</div>
  </div>
</div>



	
	
			
	

	
	
	<form class="form" action="submit.jsp" method="post">
		<%!String ques, ans1, ans2, ans3, ans4, cans;%>

		<%
			try {
				int flag = 0;

				int counter = 0;

				String ssemail = (String) session.getAttribute("lid");
				String s = "select subjectname from studentreg where semail='" + ssemail + "' ";
				ResultSet rt = DAO.displayRecord(s);
				//out.println(s);
				while (rt.next()) {
					session.setAttribute("subject", rt.getString("subjectname"));

					String sb = "select  idquestion ,question ,option1,option2,option3,option4,correctans  from question  where subjectname ='"
							+ rt.getString("subjectname") + "'ORDER BY RAND() ";
					//out.println(sb);

					ResultSet rs = DAO.displayRecord(sb);

					while (rs.next()) {
						counter++;

						ques = (String) rs.getString(2);
						ans1 = (String) rs.getString(3);
						ans2 = (String) rs.getString(4);
						ans3 = (String) rs.getString(5);
						ans4 = (String) rs.getString(6);

						
		%>


		<div style="margin: 40px 30px;">
			<label class="control-label" style="margin: 20px 30px;"> </label><input
				type="hidden" class="control-label" name="idquestion"
				value="<%=rs.getInt("idquestion")%>"> <label
				class="control-label" style="margin: 20px 30px;">Question <%=counter%>
			</label><input type="hidden" class="control-label" name="ques <%=counter%>"><%=ques%>
			<table>

				<tr>
					<td>a<input type="radio" name="ra<%=counter%>"
						style="margin: 10px 20px;" value=<%=rs.getString(3)%> onclick="radioclick(this.value,<%=rs.getInt("idquestion") %>)" /><%=rs.getString(3)%></td>
				</tr>
				<tr>
					<td>b<input type="radio" name="ra<%=counter%>"
						style="margin: 10px 20px;" value=<%=rs.getString(4)%>onclick="radioclick(this.value,<%=rs.getInt("idquestion") %>)" /><%=rs.getString(4)%></td>
				</tr>
				<tr>
					<td>c<input type="radio" name="ra<%=counter%>"
						style="margin: 10px 20px;" value=<%=rs.getString(5)%>onclick="radioclick(this.value,<%=rs.getInt("idquestion") %>)" /><%=rs.getString(5)%></td>
				</tr>
				<tr>

					<td>d<input type="radio" name="ra<%=counter%>"
						style="margin: 10px 20px;" value=<%=rs.getString(6)%> onclick="radioclick(this.value,<%=rs.getInt("idquestion") %>)"/><%=rs.getString(6)%></td>
				</tr>


			</table>

		</div>







		<%
			}

				}

			}

			catch (Exception e) {
				out.println(e);
			}
		%>
		
			<button type="submit" class="button" name="btn" value="next" onclick="submit.jsp">submit</button>
		
	</form>
	
	
	<div class="footer">
				<hr>
				</div>




			<footer class="footer">
				<div class="container-fluid">
					


				</div>
			</footer>
	<script>
	function radioclick(radiovalue,idquestion)
	{
		var xmlhttp=new XMLHttpRequest();
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200 )
				{
				
				}
		};
		xmlhttp.open("GET","forajax/DEEPTi.jsp?idquestion="+ idquestion+"value1="+radiovalue,true) 
		xmlhttp.send("null")
	}
	
	
	</script>

</body>
</html>