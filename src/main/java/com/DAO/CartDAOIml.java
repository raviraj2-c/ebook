package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.entity.Cart;
import com.entity.bookDtls;

public class CartDAOIml implements CartDAO {

	private Connection conn;
	
	public CartDAOIml( Connection conn) {
		this.conn=conn;
	}
	
	
	@Override
	public boolean addCart(Cart c) {
		boolean f = false;
		
		try {
			
			String sql="insert into cart(bid,uid,book_name,author,price,totalprice) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getBid());
			ps.setInt(2, c.getUserid());
			ps.setString(3, c.getBookName());
			ps.setString(4, c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotleprice());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public List<Cart> getBookByUser(int userId) {
		List<Cart> list = new ArrayList<Cart>();
		double totalprice = 0;
		Cart c= null;

		try {
			
			String sql ="select * from cart where uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				c=new Cart();
				c.setCid(rs.getInt(1));
				c.setBid(rs.getInt(2));
				c.setUserid(rs.getInt(3));
				c.setBookName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				totalprice = totalprice+rs.getDouble(7);
				c.setTotleprice(totalprice);
				
				list.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;	}


	@Override
	public boolean deleteBook(int bid , int uid , int cid) {
		boolean f =false;
		
		try {
			String sql = "delete from cart where bid=? and uid=? and cid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, bid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return f;
	}




	
}
