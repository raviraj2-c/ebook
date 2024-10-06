package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOIml;
import com.DB.DBconnect;
import com.entity.user;
@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("fname");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			
			user us = new user();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			
			HttpSession session = req.getSession();
			
			UserDAOIml dao = new UserDAOIml(DBconnect.getConn());
			
			boolean f = dao.checkPassword(id, password);
			
			if(f) {
				boolean f2 = dao.updateProfile(us);
				if(f2) {
					session.setAttribute("succmsg", "profile update successfully..");
					resp.sendRedirect("edit_profil.jsp");
				}else {
					session.setAttribute("failedmsg", "someting wrong on server");
					resp.sendRedirect("edit_profil.jsp");
				}
			}else {
				session.setAttribute("failedmsg", "password is incurrect");
				resp.sendRedirect("edit_profil.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	 
	
}
