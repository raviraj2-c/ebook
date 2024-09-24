package com.admin.servlet;

import java.io.File;
import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOIml;
import com.DB.DBconnect;
import com.entity.bookDtls;

@WebServlet("/add_book")
@MultipartConfig
public class bookadd extends HttpServlet {



	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try{
			String bookName=req.getParameter("bookName");
			String author=req.getParameter("author");
			String price=  req.getParameter("price");
			String categories=req.getParameter("categories");
			String status=req.getParameter("status");
			Part part=req.getPart("bimg");
			String filename=part.getSubmittedFileName();
			
			bookDtls b = new bookDtls(bookName,author,price,categories,status,filename,"admin");


			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			
			
			
			boolean f = dao.bookadd(b);
			
			HttpSession session = req.getSession();
			
			if(f) {
				
				String path = getServletContext().getRealPath("")+"book";
				File file =new File(path);
				part.write(path + File.separator + filename);
				
				session.setAttribute("succmsg", "book add sucessfully");
				resp.sendRedirect("admin/add_book.jsp");
			}else {
				session.setAttribute("failedmsg", "someting wrong on server");
				resp.sendRedirect("admin/add_book.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
