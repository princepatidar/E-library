<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="jquery-ui/jquery-ui.css">
<link rel="stylesheet" href="jquery-ui/jquery-ui.structure.css">
<link rel="stylesheet" href="jquery-ui/jquery-ui.theme.css">
<link rel="stylesheet" href="css/home.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div class ="topleft"><img id="logo" src="imgs/medilogo.jpg"/></div>
			
		<div class="topright" >
			<div id ="account" style="position: relative;">
				
				</div>
				<div id="clgname">MediCaps-University</div>
				<form class="search" action="FindBook">
					<input type="text">
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
            
            	<div  class="sec">
            	
            	 <img  id="book-image" src="" class=" sec-a" style="width:150px;height:190px;margin-top:0px;">
            	 	<div id="book-title"> </div>
            		
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
            active :0,
            heightStyle : true
        });
	</script>
	
	<script>
	
	function myDisplayer(id) {
		for(var i=0;i<id.length;i++){
		var str1="imgs/";
		 var str2=id[i];
		 var str3=".jpg";
		 var str=str1.concat(str2,str3);
		document.getElementById("book-image").src=str;
		//console.log("hello "+id.length);
		//window.alert(id.length);
		}
	}
	
	let myPromise = new Promise(function(myResolve, myReject) {
		let imgId=[];
		var ids=<%=request.getAttribute("imgIds")%>;
			imgId.concat(ids);
		    if (imgId.length!=0) {
		      myResolve(imgId[0]);
		    } else {
		      myReject("File not Found");
		    }
		});
	
	myPromise.then(
			  function(value) {myDisplayer(value);},
			  function(error) {myDisplayer(error);}
	);
		
	</script>
</body>
</html>