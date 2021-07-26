package com.login.forget;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.login.forget.ForgotPassword;

@WebServlet("/recepientId")
public class RecepientId extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		//HttpSession session =request.getSession();
		String email= (String)ForgotPassword.session.getAttribute("email");
		String uname= (String)ForgotPassword.session.getAttribute("uname");
		ForgotPassword.session.setMaxInactiveInterval(10);
		
		ServletContext ctx= getServletContext();
		ctx.setAttribute("email", email);
		
		try {
			SendEmail.sendMail(email,uname);
			response.sendRedirect("emailsentnotice.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			RequestDispatcher rd=request.getRequestDispatcher("forgotpassword.jsp");
			rd.include(request, response);
			e.printStackTrace();
		} 
		
	}

}
