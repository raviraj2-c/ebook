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
					<h4 class="text-center">Regstration pasge</h4>
						<form action="register" method="Post">
						
						<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1" required="required" name="fname"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1" required="required" name="email"
									aria-describedby="emailHelp" >
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Phone</label> <input
									type="number" class="form-control" id="exampleInputEmail1" required="required" name="phone"
									aria-describedby="emailHelp" >
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password"
									>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1" required="required"> <label class="form-check-Label"
									for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="all_component/footer.jsp"%>
</body>
</html>