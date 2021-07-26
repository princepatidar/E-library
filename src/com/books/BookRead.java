package com.books;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.books.dao.*;

@WebServlet("/BookRead")
public class BookRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*ServletOutputStream sos=null;
		String bookId=request.getParameter("bookId").toString();
		
		response.setContentType("application/pdf");
		response.setHeader("Content-disposition","inline; filename="+bookId+".pdf");
 
         sos = response.getOutputStream();
         byte[] bookInBytes=BookReadDao.check(bookId);
   
        sos.write(bookInBytes); 
        sos.flush();
        sos.close(); */
		String bookId=request.getParameter("bookId").toString();
		
		String bookContentId=BookReadDao.check(bookId);
		System.out.println(bookContentId);
		String bookContent="https://drive.google.com/file/d/"+bookContentId+"/view?usp=sharing";
		response.sendRedirect(bookContent);
	}

}
