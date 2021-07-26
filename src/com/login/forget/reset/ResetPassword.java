package com.login.forget.reset;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.login.forget.reset.dao.*;

@WebServlet("/resetpass")
public class ResetPassword  extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	ResetDao dao =null;
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		System.out.println("on resetpassword.java page");
		String pass=request.getParameter("pass");
		
		ServletContext ctx=getServletContext();  
		String email=(String)ctx.getAttribute("email");
		 
		 dao=new ResetDao();
		 
		if(dao.check(email,pass))
		{
			HttpSession session =request.getSession();
			session.setAttribute("email",email);
			response.sendRedirect("login.jsp");
		}
		
	}
}
