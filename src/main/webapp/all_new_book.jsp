<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

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
<title>Insert title here</title>

<%@include file="all_component/allcss.jsp"%>

<style type="text/css">

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>

</head>
<body>

<div id="toast">added successfuly</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>





<%
user u = (user)session.getAttribute("userobj");
%>
	<%@include file="all_component/navbar.jsp"%>
	
	<div class="container-fluid">
		<div class="row">
		
		<%
			  BookDAOIml dao = new BookDAOIml(DBconnect.getConn());
			List<bookDtls> list = dao.getAllNewBook();
			for (bookDtls b : list){
			%>
			<div class="col-md-2">
			<div class="card crd-ho my-3">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoname() %>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookname() %></p>
						<p><%=b.getAuthor() %></p>
						<p>Categories: <%=b.getBookcategory() %></p>
						<div class="row">
							
							<%
						if(u==null){
						%>
						<a href="login.jsp" class="btn btn-danger btn-sm mL-2">Add Cart</a>
								
						<%}else{ %>
						
							<a href="cart?bid=<%=b.getBook_id() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm mL-2">Add Cart</a>
							 <%} %>
							
 <a href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
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