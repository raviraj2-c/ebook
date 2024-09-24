 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>



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




	<div class="container ">
		<div class="row p-5">


			<div class="col-md-3">
				<a href="add_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
						</div>
					</div>
				</a>
			</div>



			<div class="col-md-3">
				<a href="Order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-bag-shopping fa-3x text-warning"></i> <br>
							<h4>Oder</h4>
						</div>
					</div>
				</a>
			</div>



             <div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
							<h4>Logout</h4>
						</div>
					</div>
				</a>
			</div>

			




		</div>
	</div>


	<div style="margin-top: 130;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>