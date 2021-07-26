<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//Http 1.1
		response.setHeader("Pragma","no-cache"); //http1.0
		response.setHeader("Expires", "0");//proxies
	
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	
	%>

	 here is embeded link of video..
	 
</body>
</html>