package com.login.signup;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import java.io.IOException;  
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import com.login.signup.dao.SignUpDao;
import com.login.signup.SignUpBean;

@WebServlet("/signup")

public class SignUp extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	SignUpDao dao=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		
			String fname = request.getParameter("fname").toString();
			String lname = request.getParameter("lname").toString();
			String uname = request.getParameter("uname").toString();
			String email = request.getParameter("email").toString();
			String pass = request.getParameter("pass").toString();
			
			SignUpBean signupbean = new SignUpBean();
			signupbean.setfname(fname);
			signupbean.setlname(lname);
			signupbean.setuname(uname);
			signupbean.setemail(email);
			signupbean.setPassword(pass);
			
			dao=new SignUpDao();
			if(SignUpDao.value)
			{
				request.setAttribute("unameMessage", " Username is used ");
				RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
				 rd.include(request,response); 
			}
			 dao.signupUser(signupbean);
			 response.sendRedirect("login.jsp");
			 
		} 
		
	}
