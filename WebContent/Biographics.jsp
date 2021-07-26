<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" href="jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="jquery-ui/jquery-ui.structure.css">
        <link rel="stylesheet" href="jquery-ui/jquery-ui.theme.css">
		<link rel="stylesheet" href="css/home.css">
		<link rel="stylesheet" href="css/dropdown.css">
	</head>
	<body>
	
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//Http 1.1
		response.setHeader("Pragma","no-cache"); //Http 1.0
		response.setHeader("Expires", "0");// Proxies
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	
	%>
	
		<header>
			<div class ="topleft"><img id="logo" src="imgs/medilogo.jpg"/></div>
			
			<div class="topright" >
				<div id ="account" class="dropdown" style="position: relative;">
					<button onclick="myFunction()" class="dropbtn" style="width:84%; padding-top:8px; padding-bottom:4px;">${username}</button>
 					 <div id="myDropdown" class="dropdown-content">
 					 	 <form action="Logout" method="post">
 					 	 	<a href="Logout" style="height:28px; text-align:center; font-size:96%;">logout</a></form>
 					 </div>
				</div>
				<div id="clgname">MediCaps-University</div>
				<form class="search" action="FindBook">
					<input type="text" name ="bookId">
					<button type="submit">search</button>
				</form>
			</div>
		</header>
		<div class="container">
			<div class= "left" id="panels">
				<h3>Dashboard</h3><div><a class="a-link" href="">home</a> </div>
				
				<h3>Books</h3><div>
					<div><a class="a-link" href="Biographics.jsp" >Biography</a></div>
					<div><a class="a-link" href="" >Computer & Tech</a></div>
					<div><a class="a-link" href="" >Entertainment</a></div>
					<div><a class="a-link" href="" >History</a></div>
					<div><a class="a-link" href="" >Kids</a></div>
					<div><a class="a-link" href="" >Literature & Friction</a></div></div>
				<h3>Novels</h3><div>
					<div><a class="a-link" href="" >Crime</a></div>
					<div><a class="a-link" href="" >Fantasy</a></div>
					<div><a class="a-link" href="" >Historical Friction</a></div>
					<div><a class="a-link" href="" >Horror</a></div>
					<div><a class="a-link" href="" >Romance</a></div>
					<div><a class="a-link" href="" >Science Fiction</a></div>
					<div><a class="a-link" href="" >Western</a></div></div>	
				<h3>Research Papers</h3><div>
					<div><a class="a-link" href="" >Analytical</a></div>
					<div><a class="a-link" href="" >Argumentative</a></div>
					<div><a class="a-link" href="" >Expository</a></div></div>
				<h3>Journals</h3><div>
					<div><a class="a-link" href="" >Academic Journals</a></div>
					<div><a class="a-link" href="" >Current affairs</a></div>
					<div><a class="a-link" href="" >Popular magazine</a></div>
					<div><a class="a-link" href="" >Newspapers</a></div></div>
            </div>
            <div class="right">
                	  <div class="sec-a" style ="margin-left:128px;">
                    	<img src="imgs/Wings of fire.jpg" width=150px height=190px>
                    	<div><a  class="a-link book" href="BookRead?bookId=Wings of fire">
							<b>Wings of fire</b></a></div>
						<div class="author">by APJ Abdul Kalam</div>
                  	  </div>
                  	  <div class="sec-b" style="margin-left:85px;">
                    	<img src="imgs/young girl.jpg" width=150px height=190px>
                    	<div><a  class="a-link book" href="BookRead?bookId=The diary of a Young girl">
							<b>The Diary of a young girl</b></a></div>
						<div class="author">by Anne Frank</div>
                  	  </div>
                  	   <div class="sec-c" style="margin-left:75px;">
                    	<img src="imgs/satya ka pryog.jpg" width=150px height=190px>
                    	<div><a  class="a-link book" href="BookRead?bookId=The story of my experiments with truth">
							<b>The story of my experiments with truth</b></a></div>
						<div class="author">by Mahatma Gandhi </div>
                  	  </div>
            </div>
		</div>
	</body>
	<script src="jquery.js" type="text/javascript"></script> <!--this must be first -->
    <script src="jquery-ui/jquery-ui.js" type="text/javascript"></script>
    <script>
        $("#panels").accordion({
            collapsible : true,
            //event :"mouseover"
            animate : 200,
            active :1,
            heightStyle : true
        });
	</script>
	
	<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
</html>