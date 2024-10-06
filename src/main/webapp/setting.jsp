
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

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>

</head>
<body style="background-color: #f7f7f7;">

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<h3 class="text-center">Hello, ${userobj.name}</h3>
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa fa-book-open fa-3x"></i>
							</div>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>



			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa fa-edit fa-3x"></i>
							</div>
							<h3>All Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="edit_profil.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa fa-edit fa-3x"></i>
							</div>
							<h3>Login & Security</h3>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4 mt-3">
				<a href="user_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa fa-map-marker fa-3x"></i>
							</div>
							<h3>Your Address</h3>
							<p>Edit Address</p>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa fa-box-open fa-3x"></i>
							</div>
							<h3>My Order</h3>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4 mt-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa fa-user-circle fa-3x"></i>
							</div>
							<h3>Help center</h3>
							<p>24*7 Service</p>
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>