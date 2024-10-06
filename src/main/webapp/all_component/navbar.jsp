
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3">
			<h3>Ebooks</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-4 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>

		</div>
		
		<c:if test="${not empty userobj }">
		<div class="col-md-3">
		<a href="checkout.jsp"><i class="fas fa-cart-plus fa-2x"></i></a>
			<a href="#" class="btn btn-success">${userobj.name}</a> <a
				href="logout" class="btn btn-primary">Logout</a>
		</div>
		</c:if>
		
		<c:if test="${empty userobj }">
		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-success">Login</a> <a
				href="regstration.jsp" class="btn btn-primary">Register</a>
		</div>
		</c:if>
	</div>
</div>



<nav class="navbar navbar-expand-lg navbar-light btn-primary">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a>
			</li>
			<li class="nav-item active"><a class="nav-link"
				href="all_recent_book.jsp">Recent</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_new_book.jsp">New Book</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_old_book.jsp">Old Book</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit">Setting</a>
			<button class="btn btn-light my-2 my-sm-0" type="submit">Contact
				Us</button>
		</form>
	</div>
</nav>