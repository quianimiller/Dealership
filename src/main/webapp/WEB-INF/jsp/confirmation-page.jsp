<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>MillerTime Inventory</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/carousel/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="/">Millertime Dealership
					Confirmation Page</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link" href="getAll">View
								Inventory</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/sign-up-customer">Sign Up</a></li>
						<li class="nav-item"><a class="nav-link" href="/login">Customer
								Login</a></li>
					</ul>
					<form:form class="d-flex" method="POST" action="/search"
						modelAttribute="keyword">
						<input class="form-control me-2" name="keyword" type="search"
							placeholder="Search" aria-label="Search">
						<a href="/search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</a>
					</form:form>
				</div>
			</div>
		</nav>
	</header>

	<main role="main" class="inner cover">
		<div class="formmargin">
			<h5 class="cover-heading">Customer Purchase</h5>
			<p class="lead">Thank you ${sales.customer.firstName}
				${sales.customer.lastName} for your purchase at Millertime
				Dealership.</p>
			<p class="lead">Please enjoy your new ${sales.vehicle.make}
				${sales.vehicle.model}.</p>
			<h1>Congratulations!!!</h1>

		</div>
		
		<!-- FOOTER -->
		<footer class="container">
			<p class="float-end">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; A Millertime Production &middot; <a
					href="https://jnqservices.com/">J & Q Services and Design, LLC</a>
				&middot;
			</p>
		</footer>
	</main>


	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>