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

@WebServlet("/delete")
public class BooksDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			boolean f=dao.deletebooks(id);
			
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
