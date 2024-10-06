package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOIml;
import com.DAO.CartDAOIml;
import com.DB.DBconnect;
import com.entity.Cart;
import com.entity.bookDtls;

@WebServlet("/cart")

public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			bookDtls b = dao.getBookById(bid);
			
			Cart c= new Cart();
			c.setBid(bid);
			c.setUserid(uid);
			c.setBookName(b.getBookname());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotleprice(Double.parseDouble(b.getPrice()));
			
			CartDAOIml dao2 = new CartDAOIml(DBconnect.getConn());
			boolean f= dao2.addCart(c);
			HttpSession session =req.getSession();
			
			if(f) {
				session.setAttribute("addCart", "book added to cart");
				resp.sendRedirect("all_new_book.jsp");
			}else {
				session.setAttribute("failed", "something wrong on server");
				resp.sendRedirect("all_new_book.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
