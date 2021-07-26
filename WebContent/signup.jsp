<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<!--  link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"-->
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>E-Library Login Page</title>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif; 
  background-image: url("library_background.jpg");
  height: 500px; /* You must set a specified height */
  background-position: absoluter; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;  
   
}  
button {   
       background-color: black;  
       width: 30%;  
        color: white;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
       border: 3px solid #f1f1f1;    
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px  black;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .signupbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
    .signinbtn{
  display: block;
  width: 100%;
  border: none;
  background-color: black;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
    }     
     
 .container {   
        padding: 25px;   
       /* background-color: white;   */
    }
  .formattributes{
        max-width: 400px;
        min-height: 400px;
        box-sizing: border-box;
       	background: rgba(255, 255, 255, 0.6); 
        box-shadow: 4px 2px 16px rgba(0, 0, 0, 0.4);
        border-radius: 8px; 
         color: #414141; 
        margin:  20px auto 0 auto; 
        padding: 15px; 
        
		}
}

</style>
</head>
<body>

		<div style="text-align:center"> <h1> Create New Account </h1> </div> 		  
   	 	<form  method="post" class="formattributes">  
        	<div class="container">   
        	<div style="text-align:center"><i class="fas fa-book-open" style="font-size:50px;
        	color:lightblue;text-shadow:2px 2px 4px #000000;"></i><h1> E-Library </h1> </div>
        	<div style="color: #FF0000;">${Message}</div>
                <label><b>First Name : </b></label>   
            	<input type="text" placeholder="Enter First Name" name="fname">
            	<div style="color: #FF0000;">${fnameMessage}</div>
            	<label><b>Last Name : </b></label>   
            	<input type="text" placeholder="Enter Last Name" name="lname">
            	<div style="color: #FF0000;">${lnameMessage}</div>
            	<label><b>Username : </b></label>   
            	<input type="text" placeholder="Enter Username" name="uname">
            	<div style="color: #FF0000;">${unameMessage}</div>
                <label><b>Email : </b></label>   
            	<input type="text" placeholder="Enter Email" name="email">
            	<div style="color: #FF0000;">${emailMessage}</div>
            	<label><b>Password : </b></label>   
            	<input type="password" placeholder="Give Password" id="password" name="pass" value="">
            	<div style="color: #FF0000;">${passMessage}</div>
                <label><b>Confirm Password : </b></label>   
            	<input type="password" placeholder="Confirm Password"  id="passwordconfirm" name="passconfirm" value="" >   
                <input type="checkbox" checked="checked"> Accept the terms and policies .<br>   
            	<button type="submit" class="signupbtn" formaction="signup"> Sign Up</button><br>
                <p>Already have an account ?</p>
            	<button type="submit" class="signinbtn" formaction="login.jsp" > Sign in </button>   
        	</div>   
   	 	</form>
   	 	
   	 	
   	 	
</body>
</html>