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

	<%@include file="all_component/navbar.jsp"%>

	<div class="caontainer">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>
						
						
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						  BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
						   bookDtls b = dao.getBookById(id);
						%>
						
						
						<form action="../editbooks" method="Post">
						<input type="hidden" name="id" value="<%=b.getBook_id()%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									name="bookName" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getBookname() %>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getAuthor() %>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1" value="<%=b.getPrice() %>">
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="status" class="form-control" >
									
									<%
									  if("Action".equals(b.getStatus())){
									%>
									<option value="Active">Active</option>
									
									<%
									  }else{
									%>
									<option value="Inactive">Inactive</option>
									<%
									  }
									%>
								</select>
							</div>
							<button type="submit" class="btn btn-primary">Update </button>
							
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