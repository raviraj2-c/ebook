
<%@page import="com.entity.bookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOIml"%>
<%@page import="com.entity.user"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-5">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			user u = (user)session.getAttribute("userobj");
			String email = u.getEmail();
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list = dao.getBookByOld(email, "Old");
			for(bookDtls b:list){
			%>	
			
			<tr>
					<th scope="row"><%=b.getBookname() %></th>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getBookcategory() %></td>
					<td>
					<a href="delete_old_book?em=<%=email %>&&id=<%=b.getBook_id() %>" class="btn btn-sm btn-danger">Delete</a>
					</td>
				</tr>
			
			<%}
			
			%>
			
				
				
			</tbody>
		</table>
	</div>
</body>
</html>