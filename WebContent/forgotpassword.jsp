<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<!--  link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"-->
<title>E-Library Login Page</title>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif; 
  background-image: url("library_background.jpg");
  height: 500px; /* You must set a specified height */
  background-position: center; /* Center the image */
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
        button-align:center;  
         }   
 form {   
       border: 3px solid #f1f1f1;    
    }   
 input[type=text] {   
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
  .btn {   
        width: 100%;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
 .container {   
        padding: 25px;   
       /* background-color: white;   */
    }
  .formattributes{
        max-width: 400px;
        min-height: 360px;
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

		<div style="text-align:center"> <h1> Reset Password Form </h1> </div> 		  
   	 	<form action="forgotpassword" method="post" class="formattributes">  
        	<div class="container">   
        		<div style="text-align:center"><h1> Forgot Password </h1> </div> 	 
            	<input type="text" placeholder="Enter email" name="email" required>    
            	<button type="submit" class="btn" value="reset">Reset my password</button>     
        	</div>   
   	 	</form>
</body>
</html>