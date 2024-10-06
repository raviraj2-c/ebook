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
<title>Insert title here</title>

<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			
				<%
				BookDAOIml dao2 = new BookDAOIml(DBconnect.getConn());
				List<bookDtls> list2 = dao2.getAllRecentBook();
				for (bookDtls b : list2) {
				%>
				<div class="col-md-2">
					<div class="card crd-ho my-3">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoname()%>"
								style="width: 100px; height: 150px" class="img-thumblin">
							<p><%=b.getBookname()%></p>
							<p><%=b.getAuthor()%></p>

							<%
							if (b.getBookcategory().equals("Old")) {
							%>
							<p>
								Categories:
								<%=b.getBookcategory()%></p>
							<div class="row">

								<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
							</div>
							<%
							} else {
							%>

							<p>
								Categories:
								<%=b.getBookcategory()%></p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm mL-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
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
		</div>

</body>
</html>