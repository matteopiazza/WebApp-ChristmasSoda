<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title>CSU - Christmas Soda University - Unauthorized Access</title>
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


    <div class="content">
    		<br/><br/>

    		<h3 style="color:red;">Access Denied!</h3>
    </div>

    <div class="footer">
		  <h5>Created by Matteo, Matthew, and Daniel</h5>
		</div>

  </body>
</html>
