package com.user.servlet;

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

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try{
			String bookName=req.getParameter("bname");
			String author=req.getParameter("author");
			String price=  req.getParameter("price");
			String categories="Old";
			String status="Active";
			Part part=req.getPart("bimg");
			String filename=part.getSubmittedFileName();
			String useremail=req.getParameter("user");
			
			bookDtls b = new bookDtls(bookName,author,price,categories,status,filename,useremail);


			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			
			
			
			boolean f = dao.bookadd(b);
			
			HttpSession session = req.getSession();
			
			if(f) {
				
				String path = getServletContext().getRealPath("")+"book";
				File file =new File(path);
				part.write(path + File.separator + filename);
				
				session.setAttribute("succmsg", "book add sucessfully");
				resp.sendRedirect("sell_book.jsp");
			}else {
				session.setAttribute("failedmsg", "someting wrong on server");
				resp.sendRedirect("sell_book.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
