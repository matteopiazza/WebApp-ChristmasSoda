<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>CSU - Christmas Soda University - Login</title>

    <style>
        * {
        box-sizing: border-box;
        }

        body {
        font-family: Arial;
        padding: 10px;
        background: #f1f1f1;
        }

        /* Header/Blog Title */
        .header {
        padding-top: 18px;
        padding-bottom: 18px;
        padding-left: 25px;
        text-align: left;
        background: #C2300D;
        color:white;
        }

        .header h1 {
        font-size: 50px;
        }

        .header h4 {
        font-size: 25px;
        }

        /* Style the top navigation bar */
        .topnav {
        overflow: hidden;
        background-color: #333;
        font-size: 25px;
        }

        /* Style the topnav links */
        .topnav a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 15px 17px;
        text-decoration: none;
        }

        /* Change color on hover */
        .topnav a:hover {
        background-color: #ddd;
        color: black;
        }

        /* Create two unequal columns that floats next to each other */
        /* Left column */
        .leftcolumn {
        float: left;
        width: 75%;
        }

        /* Right column */
        .rightcolumn {
        float: left;
        width: 25%;
        background-color: #f1f1f1;
        padding-left: 20px;
        }

        /* Fake image */
        .fakeimg {
        width: 100%;
        padding: 10px;
        }

        /* Add a card effect for articles */
        .card {
        background-color: white;
        padding: 20px;
        margin-top: 20px;
        }

        /* Clear floats after the columns */
        .row:after {
        content: "";
        display: table;
        clear: both;
        }

        /* Style the content */
        .content {
        background-color: #ddd;
        padding: 10px;
        }
        /* Footer */
       	.footer {
        background-color: #C2300D;
  		padding: 25px;
  		color: white;
  		text-align: right;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 800px) {
        .leftcolumn, .rightcolumn {
        width: 100%;
        padding: 0;
        }
        }

        /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
        @media screen and (max-width: 400px) {
        .topnav a {
        float: none;
        width: 100%;
        }
        }
        input[type=text], select {
          width: 32%;
          margin-left: 30%;
          margin-right: 30%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
          align-item: center;
        }

        input[type=password], select {
        width: 32%;
        margin-left: 30%;
        margin-right: 30%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        }

        input[type=submit] {
          width: 20%;
          margin-left: 30%;
          margin-right: 30%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          background-color: #333;
          color: white;
          font-size: 18px;
          font-weight: bold;
          border-radius: 4px;
          box-sizing: border-box;
          align-item: center;
        }

        input[type=submit]:hover {
        background-color: #C2300D;
        }

        .loginStyle {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
        }

        .button {
		  width: 15%;
          margin-left: 30%;
          margin-right: 30%;
          padding: 12px 8px;
          margin: 8px 0;
          display: inline-block;
          border: 0.5px #333;
          background-color: #333;
          color: white;
          font-size: 18px;
          font-weight: bold;
          border-radius: 4px;
          box-sizing: border-box;
          align-item: center;

		}

		.button span {
		  cursor: pointer;
		  display: inline-block;
		  position: relative;
		  transition: 0.5s;
		}

		.button span:after {
		  content: '\00bb';
		  position: absolute;
		  opacity: 0;
		  top: 0;
		  right: -20px;
		  transition: 0.5s;
		}

		.button:hover span {
		  padding-right: 25px;
		}

		.button:hover span:after {
		  opacity: 1;
		  right: 0;
		}
    </style>
    <script>
          if (document.addEventListener){
            document.addEventListener("contextmenu", function(e){
              alert("Access Denied to Context Menu");
              e.preventDefault();
            },
            false);
          }

          document.onkeypress = function (event){
            event = (event || window.event);
              if (event.keyCode == 123){
                return false;
              }
          }

          document.onkeydown = function (event){
            event = (event || window.event);
            if (event.keyCode == 123){
                return false;
            }
          }

          document.onmousedown = function (event){
            event = (event || window.event);
            if (event.keyCode == 123){
              return false;
            }
          }

          const tl = gsap.timeline({ defaults: { ease: "power1.out" } });

          tl.to(".text", { y: "0%", duration: 1, stagger: 0.25 });
          tl.to(".slider", { y: "-100%", duration: 1.5, delay: 0.5 });
          tl.to(".intro", { y: "-100%", duration: 1 }, "-=1");
          tl.fromTo(".big-text", { opacity: 0 }, { opacity: 1, duration: 1 }, "-=1");
    </script>
  </head>

	<body>

		<div class="header">
		  <h1>Christmas Soda University</h1>
		</div>

		<div class="topnav">
		  <a href="${pageContext.request.contextPath}/">home</a>
		  <a href="${pageContext.request.contextPath}/studentUpdates">student</a>
		  <a href="${pageContext.request.contextPath}/facultyUpdates">faculty</a>
		  <a href="${pageContext.request.contextPath}/userInfo"
		     style="float:right">my account</a>
		</div>


		<p style="color: red;">${errorMsg}</p>

		<form method="POST" action="${pageContext.request.contextPath}/login">
	      <div class="loginStyle">

	        <input type="hidden" name="redirectId" value="${param.redirectId}" />

	        <label style="font-size: 15px;font-weight: strong;" for="fname">Username</label><br>
	        <input type="text" name="userName" value="${user.userName}" /><br>

	        <label style="font-size: 15px;font-weight: strong;" for="lname">Password</label><br>
	        <input type="password" name="password" value="${user.password}" /><br><br>

	        <button class="button" style="vertical-align:middle"
    				value="submit"><span>Login</span></button>

	      </div>
		</form>

		<div class="footer">
		  <h5>Created by Matteo, Matthew, and Daniel</h5>
		</div>

    <script>
  	</script>
  </body>
</html>
