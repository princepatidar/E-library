<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src='https://kit.fontawesome.com/a076d05399.js'> </script>
<title>Insert title here</title>
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
         }   
 form {   
       border: 3px solid #f1f1f1;    
    }
    button:hover {   
        opacity: 0.7;   
    }   
  .btn {   
        width: 100%;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
          
    .btn{
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
        min-height: 300px;
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
	<div style="text-align:center"> <h1> E-library </h1> </div> 		  
   	 	<form action="login.jsp" method="post" class="formattributes">  
        	<div class="container"> 
        		<div style="text-align:center"><i class='far fa-check-circle' style='font-size:48px;color:lightblue'>
        		</i><h1> Forgot Password </h1> </div>
        		 <p>If provided email is a registered email ID on<br> E-library,you will receive an
        		 email with further instructions on how to reset your password.In case you didn't 
        		 receive this email,you need to create a new account <a href="signup.jsp">here</a>.
        		 </p>
        	 	<button type="submit" value="login" class="btn">Log In</button>
        	</div>
        </form>
        	

</body>
</html>