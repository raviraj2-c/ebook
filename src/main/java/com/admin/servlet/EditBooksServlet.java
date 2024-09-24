package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOIml;
import com.DB.DBconnect;
import com.entity.bookDtls;

@WebServlet("/editbooks")

public class EditBooksServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			String bookName=req.getParameter("bookName");
			String author=req.getParameter("author");
			String price=  req.getParameter("price");
			String status=req.getParameter("status");
			
			
			bookDtls b= new bookDtls();
			b.setBook_id(id);
			b.setBookname(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			boolean f=dao.updateEditBooks(b);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("sussMag", "book update successfully");
				resp.sendRedirect("admin/all_book.jsp");
			}else {
				session.setAttribute("failedmsg", "Sometion wrong on server ");
				resp.sendRedirect("admin/all_book.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
