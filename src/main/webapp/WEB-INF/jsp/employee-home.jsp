<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Dealership Employee Account</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<!--  <link href="cover.css" rel="stylesheet"> -->
<link href="carousel.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
</head>


<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">Millertime Dealership Employee </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/sign-up-customer">Sign Up</a></li>
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
<body>
	<div class="formmargin">
		<div class="container1">
			<main role="main" class="inner cover">
				<h1 class="cover-heading">Employee Profile</h1>
				<p class="lead">Welcome Back ${loggedInEmployee.firstName}
					${loggedInEmployee.lastName}. Click below to find all transactions
					with Millertime Dealership or add a vehicle.</p>
				<p class="btn-center">
					<a href="/transactions" class="btn btn-lg btn-secondary">View
						Transactions</a> <a href="/new-vehicle"
						class="btn btn-lg btn-secondary">Add Vehicle</a>
				</p>
			</main>
		</div>
	</div>

	<footer class="mastfoot mt-auto">
		<div class="inner">
			<p>
				Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
				by <a href="https:jnqservices.com//">J & Q Services and Design,
					LLC</a>>.
			</p>
		</div>
	</footer>



</body>

</html>


