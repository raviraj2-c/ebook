package com.entity;

public class bookDtls {

	private int book_id;
	private String bookname;
	private String author;
	private String price;
	private String bookcategory;
	private String status;
	private String photoname;
	private String user_email;
	public bookDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public bookDtls(String bookname, String author, String price, String bookcategory, String status, String photoname,
			String user_email) {
		super();
		this.bookname = bookname;
		this.author = author;
		this.price = price;
		this.bookcategory = bookcategory;
		this.status = status;
		this.photoname = photoname;
		this.user_email = user_email;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBookcategory() {
		return bookcategory;
	}
	public void setBookcategory(String bookcategory) {
		this.bookcategory = bookcategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoname() {
		return photoname;
	}
	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	@Override
	public String toString() {
		return "bookDtls [book_id=" + book_id + ", bookname=" + bookname + ", author=" + author + ", price=" + price
				+ ", bookcategory=" + bookcategory + ", status=" + status + ", photoname=" + photoname + ", user_email="
				+ user_email + "]";
	}
	
	
	
}
