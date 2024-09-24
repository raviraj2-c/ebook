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

	<h3 class="text-center">Order</h3>

	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">price</th>
				<th scope="col">payment Type</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				
			</tr>
		</tbody>
	</table>
	
	<div style="margin-top:130;">
<%@include file="all_component/footer.jsp"%>
</div>
</body>
</html>