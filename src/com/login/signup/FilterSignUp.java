package com.login.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class FilterSign
 */
@WebFilter("/signup")
public class FilterSignUp implements Filter {

	public void destroy() {
		
	}
		
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

			HttpServletRequest req=(HttpServletRequest)request;
			HttpServletResponse res=(HttpServletResponse)response;
			HttpSession session=req.getSession(false);
			PrintWriter out = res.getWriter();
			//System.out.println("filter");
			
			String fname = req.getParameter("fname");
			String lname = req.getParameter("lname");
			String uname = req.getParameter("uname");
			String email = req.getParameter("email");
			String pass = req.getParameter("pass");
			String passconfirm = req.getParameter("passconfirm");
			//String errorMessage =" ";
					
			boolean flag1=false;
			boolean flag2=false;
			boolean flag3=false;
			boolean flag4=false;
			
			Pattern name=Pattern.compile("^[A-Za-z\\s]{1,20}$"); // name regex
			Matcher first=name.matcher(fname);
			Matcher last=name.matcher(lname);
			
			boolean a=first.find()&&first.group().equals(fname);
			boolean b=last.find()&&last.group().equals(lname);
			
			if(a==true&&b==true)
			{
				flag1=true;
			}
			else 
			{
				if(a==false)
				req.setAttribute("fnameMessage", "Invalid Firstname ");
				if(b==false)
					req.setAttribute("lnameMessage", "Invalid Lastname ");
			}
			
				// req.getSession().removeAttribute("invalid Name");
				
			
			
			Pattern username=Pattern.compile("^[a-zA-Z0-9](_(?!(\\.|_))|\\.(?!(_|\\.))|[a-zA-Z0-9]){4,18}[a-zA-Z0-9]$"); //uname regex
			Matcher m=username.matcher(uname);
			
			if(m.find()&&m.group().equals(uname))
			{
				flag2=true;
			}
			else req.setAttribute("unameMessage", " Invalid Username ");
			
			String mailstr="^[\\w!#$%&’*+/=?`{|}~^-]+(?:\\.[\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
			Pattern mailId=Pattern.compile(mailstr); //email regex
			Matcher match=mailId.matcher(email);
			
			if(match.find()&&match.group().equals(email))
			{
				flag3=true;
			}
			else req.setAttribute("emailMessage", " Invalid Email ");
			
			Pattern pwd=Pattern.compile("^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$"); //password regex
			Matcher m1=pwd.matcher(pass);
			Matcher m2=pwd.matcher(passconfirm);
			
			boolean c=m1.find()&&m1.group().equals(pass);
			boolean d=m2.find()&&m2.group().equals(passconfirm);
			
			if(pass.equals(passconfirm))
			{	
				if(c==true&&d==true)
				{
					flag4=true;
				}
				else
				req.setAttribute("passMessage", " Invalid Password  ");
			}
			
			if(flag1==true&&flag2==true&&flag3==true&&flag4==true)
			{
				//System.out.println("Right");
				  req.setAttribute("Message", " ");
				  chain.doFilter(request, response);
			}
			else
			{
				//System.out.println("Wrong");
								// req.setAttribute("Message", "Invalid Entries ");
				 RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
				 rd.include(request,response); 
			}
			
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
