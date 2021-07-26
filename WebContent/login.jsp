<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1;" name="viewport" content="width=device-width, initial-scale=1">

	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<title>E-Library Login Page</title>
	<style>   
	body {  
  		font-family: Calibri, Helvetica, sans-serif; 
  		background-image: url("library_background.jpg");
  		height: 500px; 
  		background-position: center;
  		background-repeat: no-repeat;
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
  	.loginbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
          
    .signupbtn{
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

		<div style="text-align:center"> <h1> Student Login Form </h1> </div>
				  
   	 	<form action="Login" method="post" class="formattributes">  
        	<div class="container">   
        	<div style="text-align:center"><i class="fas fa-book-open" style="font-size:50px;
        	color:lightblue;text-shadow:2px 2px 4px #000000;"></i><h1> E-Library </h1> </div> 	
        	
        		<div style="color: #FF0000;">${msg}</div>
            	<label><b>Username : </b></label>   
            	<input type="text" placeholder="Enter Username" name="uname" id="uname">
            	<label id="lbluser" style ="color:red; visibility :hidden">Invalid </label><br>
            	<label><b>Password : </b></label>   
            	<input type="password" placeholder="Enter Password" name="pass" id="pass">  
            	<button type="submit" class="loginbtn" value="login" id="login">Login</button>   
            	<input type="checkbox"  id="check" checked="checked"> Remember me  <br> 
                <b>Forgot</b> <a href="forgotpassword.jsp"> password? </a>  
                <button type="submit" formaction="signup.jsp" class="signupbtn">Sign Up</button>
        	</div>   
   	 	</form>
	</body>
</html>