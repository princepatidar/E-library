package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	LoginDao dao=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname").toString();
		String pass = request.getParameter("pass").toString();
		
		dao=new LoginDao();
		
		HttpSession session=request.getSession();
		if(dao.check(uname, pass))
		{
			
			session.setAttribute("username" ,uname);
			response.sendRedirect("home.jsp");
		}
		else
		{
			request.setAttribute("msg", "Sorry user is invalid!");
			
			
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			 rd.include(request,response);
			 session.invalidate();
		}
	}

}
