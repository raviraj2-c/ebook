<%@page import="com.entity.user"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.bookDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOIml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E_Book_App</title>
<%@include file="all_component/allcss.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-h0:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">

	<%
	user u = (user) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Management System</h2>
	</div>


	<!-- recent book -->
	<div class="container my-2">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">

			<%
			BookDAOIml dao2 = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list2 = dao2.getRecentBooks();
			for (bookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoname()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>

						<%
						if (b.getBookcategory().equals("Old")) {
						%>
						<p>
							Categories:
							<%=b.getBookcategory()%></p>
						<div class="row">

							<a href="view_books.jsp?bid=<%=b.getBook_id()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>

						<p>
							Categories:
							<%=b.getBookcategory()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm mL-2">Add
								Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBook_id()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm mL-2">Add Cart</a>
							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBook_id()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>

						<%
						}
						%>


					</div>
				</div>
			</div>

			<%
			}
			%>

		</div>

		<div class="text-center mt-1">
			<a href="all_recent_book.jsp"
				class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- recent book -->


	<!-- New book -->
	<div class="container my-2">
		<h3 class="text-center">New Book</h3>
		<div class="row">


			<%
			BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list = dao.getNewBook();
			for (bookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoname()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookcategory()%></p>
						<div class="row">
							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm mL-2">Add
								Cart</a>

							<%
							} else {
							%>

							<a href="cart?bid=<%=b.getBook_id()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm mL-2">Add Cart</a>
							<%
							}
							%>
							<a href="view_books.jsp?bid=<%=b.getBook_id()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>



		</div>

		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>
	</div>
	<!-- new book -->


	<!-- Old book -->
	<div class="container my-2">
		<h3 class="text-center">Old Book</h3>
		<div class="row">


			<%
			BookDAOIml dao3 = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list3 = dao3.getOldBooks();
			for (bookDtls b : list3) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoname()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookcategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBook_id()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			%>

		</div>

		<div class="text-center mt-1">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>
	</div>
	<!-- old book -->


	<%@include file="all_component/footer.jsp"%>
</body>
</html>