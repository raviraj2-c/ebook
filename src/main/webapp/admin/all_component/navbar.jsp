 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


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
		<div class="col-md-3">
		     <c:if test="${not empty userobj }">
		     <a class="btn btn-success">${userobj.name }</a>
		     <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary">Logout</a>
		     </c:if>  
		     <c:if test="${empty userobj }"> 
			<a href="../login.jsp" class="btn btn-success">Login</a> <a
				href="../regstration.jsp" class="btn btn-primary">Register</a>
				</c:if>
		</div>
	</div>
</div>



<!-- logout poppo -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">
				      <h4>Do You want to Logout</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../logout" type="button" class="btn btn-primary">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- logout poppo -->


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
			<li class="nav-item active"><a class="nav-link" href="#">Home</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="#">Recent</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-light my-2 my-sm-0" type="submit">Setting</button>
			<button class="btn btn-light my-2 my-sm-0" type="submit">Contact
				Us</button>
		</form>
	</div>
</nav>