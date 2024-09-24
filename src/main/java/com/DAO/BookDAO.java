package com.DAO;


import java.util.List;

import com.entity.bookDtls;

public interface BookDAO {

	public boolean bookadd(bookDtls b);
	
	public List<bookDtls> getAllBooks();
	
	public bookDtls getBookById(int id);
	
	public boolean updateEditBooks(bookDtls b);
	
	public boolean deletebooks(int id);
	
	public List<bookDtls> getNewBook();
	
	public List<bookDtls> getRecentBooks();
	
	public List<bookDtls> getOldBooks();
	
}