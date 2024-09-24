package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAOIml;
import com.DB.DBconnect;
import com.entity.user;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			
			
			user us = new user();
			us.setName(name);
			us.setPassword(password);
			us.setPhone(phone);
			us.setEmail(email);
			
			UserDAOIml dao = new UserDAOIml(DBconnect.getConn());
			boolean f=dao.userRegistre(us);
			if(f) {
				System.out.print("user register success...");
			}else {
				System.out.print("sometion wrong on server..");
			}
			
		}catch(Exception e) {
			e.printStackTrace(); 
		}
	}

}
