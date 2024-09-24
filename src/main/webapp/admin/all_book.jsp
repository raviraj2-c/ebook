 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<%@page import="java.util.List"%>
<%@page import="com.entity.bookDtls"%>
<%@page import="com.DAO.BookDAOIml"%>
<%@page import="com.DB.DBconnect"%>
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

<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"/>
</c:if>	

	<h3 class="text-center">Add Book</h3>


	
	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Imahe</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>


			<%
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list = dao.getAllBooks();
			for (bookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBook_id()%></td>
				<td><img src="../book/<%=b.getPhotoname()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=b.getBookname()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookcategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_books.jsp?id=<%=b.getBook_id()%>"
					class="btn btn-sm btn-primary">Edit</a> <a href="../delete?id=<%= b.getBook_id() %>"
					class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

	<div style="margin-top: 130;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>