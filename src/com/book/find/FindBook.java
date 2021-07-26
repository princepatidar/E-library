package com.book.find;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.find.dao.FindBookDao;


@WebServlet("/FindBook")
public class FindBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String bookId=request.getParameter("bookId").toString();
		Vector<String> imgIds=new Vector<String>();
		imgIds.addAll(FindBookDao.check(bookId));
		//System.out.println("pass 1 :"+imgId);
		if(imgIds.size()!=0)
		{
			System.out.println("pass 1");
			request.setAttribute("imgIds", imgIds);
			for(int i=0;i<imgIds.size();i++)
			{
				System.out.println(imgIds.get(i));
			}
			RequestDispatcher rd=request.getRequestDispatcher("bookfound.jsp");
			rd.include(request,response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("");
			rd.include(request,response);
		}
	}

}
