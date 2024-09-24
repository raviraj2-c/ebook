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
<body style="baground-color= #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container my-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">login pasge</h4>
					
					<c:if test="${not empty succMsg }">
					<h5 class="text-center text-success">${succMsg }</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
						<form action="login" method="Post">
						
						<div class="form-group">
						
						
								<label for="exampleInputEmail1">Emaail ID</label> <input
									type="text" class="form-control" id="exampleInputEmail1" required="required" name="email"
									aria-describedby="emailHelp">
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password"
									>
							</div>
							
							<div class="text-center">
							<button type="submit" class="btn btn-primary">Login</button><br>
							<a href="regstration.jsp">Create Account</a>
						    </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="all_component/footer.jsp"%>
</body>
</html>