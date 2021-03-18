<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
   response.addHeader("Pragma", "no-cache");
   response.addDateHeader ("Expires", 0);
 %>
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://use.fontawesome.com/000aaaa000.js"></script>
    <title>CSU - Christmas Soda University - Faculty Updates</title>
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
        padding: 5px;
        }

        /* Add a card effect for articles */
        .card {
        background-color: white;
        padding: 30px;
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
        padding: 30px;
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
          width: 40%;
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
        width: 40%;
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
          width: 30%;
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
		  <a href="${pageContext.request.contextPath}/facultyUpdates"
         style="background-color: #ddd; color:black;">faculty</a>
		  <a href="${pageContext.request.contextPath}/userInfo"
		     style="float:right">my account</a>
		</div>


	    <div class="row">
          <div class="leftcolumn">
            <div class="card">
              <h1>Factulty Updates!</h2>
              <h3>Join us March 14, 1990</h5>
              <div class="fakeimg">
                  <img src="https://www.chinainterlaw.org/loi-pinel-learning.jpg" width="800px">
              </div>
              <p>Secret News</p>
              <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do
                <br>eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                <br>exercitation ullamco.</p>
            </div>

            <div class="card">
              <h1>How to Deal with Zoom Lectures</h2>
              <h3>Scientists discover something interesting., Sep 2, 2032</h5>
              <div class="fakeimg">
              	<img src="https://gadgetstouse.com/wp-content/uploads/2020/07/Zoom.jpg" width="700px">
              </div>
              <p>Some text..</p>
              <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod
                <br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                <br>exercitation ullamco.</p>
            </div>
          </div>


			<div class="rightcolumn">
            <div class="card">
              <h2>About Us</h2>
              <div class="fakeimg" style="height:100px;">
              	<img src="https://media.sciencephoto.com/image/f0143717/800wm"
              		 height="150px">
              </div>
              <p><br><br><br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                  pariatur.</p>
            </div>
            <div class="card">
              <h3>Come Visit Us!</h3>
              <div class="fakeimg">
              	<p>123 Fake St.<br>
              		Springfield, NA<br>
              		Antartica</p>
              </div>
            </div>
            <div class="card">
              <h3>Follow Us!</h3>
              <p>FACEBOOK<br>FACEBOOK<br>FACEBOOK<br>FACEBOOK</p>
            </div>
          </div>
        </div>


   		<div class="footer">
		  <h5>Created by Matteo, Matthew, and Daniel</h5>
		</div>

	</body>

</html>
