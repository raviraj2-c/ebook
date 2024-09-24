package com.DAO;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.bookDtls;

public class BookDAOIml implements BookDAO{

	private Connection conn;
	
	
	

	public BookDAOIml(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean bookadd(bookDtls b ) {
		
		boolean f = false;
		
		try {
       String sql= "insert into book_dlte(bookname,author,price,bookcategory,status,photoname,user_email) values(?,?,?,?,?,?,?)";
		
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setString(1, b.getBookname());
		ps.setString(2, b.getAuthor());
		ps.setString(3, b.getPrice());
		ps.setString(4, b.getBookcategory());
		ps.setString(5, b.getStatus());
		ps.setString(6, b.getPhotoname());
		ps.setString(7, b.getUser_email());
		
		
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
	public List<bookDtls> getAllBooks() {

		List<bookDtls> list = new ArrayList<bookDtls>();
		bookDtls b = null;

		try {
			
			String sql = "select * from book_dlte";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();	
			
			while(rs.next()) {
				b=new bookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookcategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUser_email(rs.getString(8));
				
				list.add(b);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public bookDtls getBookById(int id) {
		
		bookDtls b = null;
		
		try {
			String sql = "select * from book_dlte where book_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				b=new bookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookcategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUser_email(rs.getString(8));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public boolean updateEditBooks(bookDtls b) {
		 boolean f = false;
		
		try {
			String sql = "update book_dlte set bookname=?,author=?,price=?,status=? where book_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookname());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBook_id());
			
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
	public boolean deletebooks(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_dlte where book_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
		     if(i==1) {
		    	 f=true;
		     }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	@Override
	public List<bookDtls> getNewBook() {

		List<bookDtls> list = new ArrayList<bookDtls>();
		bookDtls b=null;
		
		try {
			String sql="select * from book_dlte where bookcategory=? and status=? order by book_id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
					
			int i = 1;
			while(rs.next() && i<=4) {
				b=new bookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookcategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUser_email(rs.getString(8));
				
				list.add(b);
				i++;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<bookDtls> getRecentBooks() {

		List<bookDtls> list = new ArrayList<bookDtls>();
		bookDtls b=null;
		
		try {
			String sql="select * from book_dlte where status=? order by book_id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
					
			int i = 1;
			while(rs.next() && i<=4) {
				b=new bookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookcategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUser_email(rs.getString(8));
				
				list.add(b);
				i++;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<bookDtls> getOldBooks() {
		List<bookDtls> list = new ArrayList<bookDtls>();
		bookDtls b=null;
		
		try {
			String sql="select * from book_dlte where bookcategory=? and status=? order by book_id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Old");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
					
			int i = 1;
			while(rs.next() && i<=4) {
				b=new bookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookcategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoname(rs.getString(7));
				b.setUser_email(rs.getString(8));
				
				list.add(b);
				i++;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	
	
	
}
