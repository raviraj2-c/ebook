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
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>

	<div class="container my-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Edit Profile</h4>
						
						<c:if test="${not empty succmsg }">
							<p class="text-center text-success" >${succmsg}</p>
							<c:remove var="succmsg" scope="session" />
						</c:if>

						<c:if test="${ empty failedmsg }">
							<p class="text-center text-success" >${failedmsg}</p>
							<c:remove var="failedmsg" scope="session" />
						</c:if>
						
						<form action="update_profile" method="post">
						<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname" value="${userobj.name}">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email" value="${userobj.email}">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="phone" value="${userobj.phone}">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="text-center p-2">
								<button type="submit" class="btn btn-primary btn-block btn-sm">Upda6e</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>