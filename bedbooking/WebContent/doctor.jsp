<!DOCTYPE html>
<html>
<head>

<style>
body {
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: Arial, Helvetica, sans-serif;
  background-image: url("./images/pagebg.jpg");
	background-size: 100%;
	margin: 0;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

li
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#555
;

	
color
:
 
white
;


}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}
/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.navbar {
	overflow: hidden;
	background-color: transparent;
	float: left;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}
/* Set a style for all buttons */
button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s;
}

img.avatar {
	width: 10%;
	border-radius: 30%;
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>


	<br />
	<center>
		<img src="./images/doctor.png" alt="Avatar"
			class="avatar">
	</center>
	<%
     String uname;
      if (session != null) {
         if (session.getAttribute("user") != null) {
        	 uname = (String) session.getAttribute("user");
        	  
            out.print("<h1>Hello Dr " + uname + ",  Welcome</h1>");
         } else {
            response.sendRedirect("index.html");
         }
      }
   %>
	<br />
	<br />
	<div class="navbar">
		<a href="#schedule"
			onclick="document.getElementById('doc01').style.display='block'">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Update
			Patient Info And Schedule Date</a> <a href="showuser?page=1">Patients
			Details</a>

		<!-- <a href="/Logout">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;LogOut</a> -->
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<form action="Logout" method="post">
			<input type="submit" value="Logout">
		</form>


	</div>
	<div id="doc01" class="modal">

		<form class="modal-content animate" action="searchuserinfo.jsp"
			method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('doc01').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="./images/patient.png" alt="Avatar"
					class="avatar">
			</div>

			<div class="container">
				<label for="u_id"><b>ID No.</b></label> <input type="text"
					placeholder="Enter ID No." name="u_id" required>

				<button type="submit" value="search">Search</button>
			</div>
		</form>
	</div>


	<div id="showuser" class="modal">

		<form class="modal-content animate" action="showuser" method="get">

		</form>
	</div>
	<div style="margin-left: 25%; padding: 1px 16px; height: 1000px;">
		<p></p>
	</div>

</body>
</html>


