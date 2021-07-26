<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
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
<script>  
var check = function() {
	  if (document.getElementById('password').value ==
	    document.getElementById('confirm_password').value) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'matching';
	  } else {
	    document.getElementById('message').style.color = 'red';
	    document.getElementById('message').innerHTML = 'not matching';
	  }
	}
  </script>  
   	 	
		
</head>
<body>


		<div style="text-align:center"> <h1> Reset Form </h1> </div> 		  
   	 	<form  action="resetpass" method="get" class="formattributes">  
        	<div class="container">   
        	<div style="text-align:center"><h1> Enter New Password</h1> </div> 
        	<p>
        	Looks like you are trying to reset the password for the account.Please enter your new
        	password twice.So we can verify you typed it correctly.
        	</p>
        		  <label><b>New Password:</b></label><br>
            	 <input type="password" placeholder="Password" id="password" name="pass"  value="" required
		 pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$" onkeyup='check();' /><br>
            	 <label><b>Confirm Password:</b></label><br>
        		<input type="password" placeholder="Confirm Password" id="confirm_password" name="cfm_pass"  
		value="" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$" required onkeyup='check();' /><br>
                <span id='message'></span>
        		<button type="submit" class="btn">Confirm</button> 
        	</div>   
   	 	</form>
   	 	
		   	 	
</body>
</html>