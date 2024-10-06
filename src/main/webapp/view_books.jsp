<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>



<%@page import="com.entity.user"%>
<%@page import="com.entity.bookDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOIml"%>
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


	<%
	user u = (user) session.getAttribute("userobj");
	%>

	<%@include file="all_component/navbar.jsp"%>


	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
	bookDtls b = dao.getBookById(bid);
	%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoname()%>"
					style="height: 150px; width: 100px"><br>
				<h4>
					Book Name:<%=b.getBookname()%></h4>
				<h4>
					Author Name:
					<%=b.getAuthor()%></h4>
				<h4>
					Category:
					<%=b.getBookcategory()%></h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookname()%></h2>


				<%
				if ("Old".equals(b.getBookcategory())) {
				%>

				<h5 class="text-primary">Contact To Seller</h5>
				<h5 class="text-primary">
					<i class="far fa-envelope"></i>EMail:<%=b.getUser_email()%></h5>

				<%
				}
				%>

				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-money-bill-wave fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-undo-alt fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-truck-moving fa-3x"></i>
						<p>Free Shipping</p>
					</div>
				</div>

				<%
				if ("Old".equals(b.getBookcategory())) {
				%>
				<div class=" text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i
						class="fas fa-cart-plus"></i> Continue Shopping</a> <a href=""
						class="btn btn-danger"><i class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
				</div>
				<%
				} else {
				%>

				<div class=" text-center p-3">
					<a href="cart?bid=<%=b.getBook_id()%>&&uid=<%=u.getId()%>"
						class="btn btn-primary"><i class="fas fa-cart-plus"></i>Add
						Cart</a> <a href="" class="btn btn-danger"><i
						class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
				</div>

				<%
				}
				%>
			</div>
		</div>

	</div>

</body>
</html>