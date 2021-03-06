<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/prof.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/animate.css">
		<!-- Icomoon Icon Fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/icomoon.css">
		<!-- Bootstrap  -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/bootstrap.css">
		<!-- Superfish -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/superfish.css">
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/physio/css/style.css">
	<title>Edit physio</title>
	</head>
	<body>
		<div class="sidebar">
			<br><center><h5>You are Logged as Physiotherapist</h5></center>

			<div class="image" align="center">
				<img alt="Profile Picture" src="${pageContext.request.contextPath}/Resources/physio/images/fr-10.jpg" class="img-circle" width="100px"/>	  			
			</div>
			<a class="active" href="Home.jsp">Home</a>
			<a href="Profile?NIC=${user.NIC}">Profile</a>
			<a href="Physio_appointments?NIC=${user.NIC}">Appointments</a>
			<a href="Physio_schedule?NIC=${user.NIC}">Schedule Request</a>
			<a href="#about">About</a>
			<a href="Logout" class="fh5co-sub-ddown">Sign Out</a>
		</div>
		
		<div class="content">
			<%@include file="/header.jsp" %>
			<div class="fh5co-parallax-any">
				<div class="container">
					
					<div id="form" class="form">
						<fieldset>
							<legend>Physiotherapists Edit Form</legend>
							 <form action="Update_physio" method="post">
						           
						
									
							        Physio NIC :<input type="text" name="NIC" value='${user.NIC}' readonly="readonly" />
							        
									Physio Name : <input type="text"  name="Name" value='${user.name}'   required="true" ><br>
									
									Email : <input type="Email" name="Email" value='${user.email}' required="true">
									
									Certificate ID :<br><input type="text" name="Certificate_ID" value='${user.certificate_ID}' required="true"><br>
									
									Address :<br><input type="Text" name="Address" value='${user.address}' required="true"><br>
									
									Experience :  <input type="Text" name="Exp" value='${user.exp}' required="true"><br>
									
									Place Name :<input type="Text" name="Place_Name" value='${user.place_Name}' required="true"><br>
									 
									Contact No :<input type="Text" name="Contact_No" value='${user.contact_No}' required="true"><br>
									
									<input type="hidden" name="Status" value="1" >
									<input type="hidden" name="PF" value="1" >
									
									<%-- Password :<input type="text" name="Password" value='${user.password}' required="true"> --%><br><br>
									
									
									  
									   
									
										
						
						    	<input type="submit" value="Submit">
						    </form>
						</fieldset>
					</div>
				</div>
			</div>
			<%@include file="/footer.jsp" %>
		</div>
			
	</body>
</html>