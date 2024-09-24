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

	<div class="caontainer">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						<form action="../add_book" method="Post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									name="bookName" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1">
							</div>
							<div class="form-group">
								<label for="inputState">Book Categories</label> <select
									id="inputState" name="categories" class="form-control">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="status" class="form-control">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add </button>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


<div style="margin-top:130;">
<%@include file="all_component/footer.jsp"%>
</div>
</body>
</html>