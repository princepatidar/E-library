package com.login.forget;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.login.forget.dao.*;


@WebServlet("/forgotpassword")
public class ForgotPassword extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	ForgetDao dao= null;
	 String email;
	 String fname;
	 static HttpSession session=null;
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		email = request.getParameter("email").toString();
		dao=new ForgetDao();
		
		if(dao.check(email))
		{
			session=request.getSession();
			String user = ForgetDao.setUser();
			session.setAttribute("email",email);
			session.setAttribute("uname", user);
			
			response.sendRedirect("recepientId");
		}
		else
		{
			response.sendRedirect("forgotpassword.jsp");
		}
		
		
	}
}
