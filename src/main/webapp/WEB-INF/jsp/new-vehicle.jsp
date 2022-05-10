<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Dealership Account Sign Up</title>

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
			<a class="navbar-brand" href="/">Millertime Dealership</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/getAll">View Inventory</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Inventory</a></li>
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

	<form:form method="POST" action="/new-vehicle" modelAttribute="vehicle">


		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputVinNumber">Vin Number</label>
				<form:input path="vinNumber" type="text" class="form-control"
					id="inputVinNumber" />
			</div>

			<div class="form-group col-md-6">
				<label for="inputYear">Year</label>
				<form:input path="year" type="text" class="form-control"
					id="inputYear" />
			</div>

		</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label class="inputMake">Make</label>
				<form:select path="make" id="make" class="form-control">
					<option class="vehicle-search" value="0">Make</option>
					<option class="vehicle-search" value="BMW">BMW</option>
					<option class="vehicle-search" value="Cadillac">Cadillac</option>
					<option class="vehicle-search" value="Chevy">Chevy</option>
					<option class="vehicle-search" value="Dodge">Dodge</option>
					<option class="vehicle-search" value="Ford">Ford</option>
					<option class="vehicle-search" value="GMC">GMC</option>
					<option class="vehicle-search" value="Honda">Honda</option>
					<option class="vehicle-search" value="Hyundai">Hyundai</option>
					<option class="vehicle-search" value="Infiniti">Infiniti</option>
					<option class="vehicle-search" value="Jaguar">Jaguar</option>
					<option class="vehicle-search" value="Jeep">Jeep</option>
					<option class="vehicle-search" value="Kia">Kia</option>
					<option class="vehicle-search" value="Land Rover">Land Rover</option>
					<option class="vehicle-search" value="Lexus">Lexus</option>
					<option class="vehicle-search" value="Lincoln">Lincoln</option>
					<option class="vehicle-search" value="Mazda">Mazda</option>
					<option class="vehicle-search" value="Mitsubishi">Mitsubishi</option>
					<option class="vehicle-search" value="Nissan">Nissan</option>
					<option class="vehicle-search" value="Pontiac">Pontiac</option>
					<option class="vehicle-search" value="Scion">Scion</option>
					<option class="vehicle-search" value="Suzuki">Suzuki</option>
					<option class="vehicle-search" value="Tesla">Tesla</option>
					<option class="vehicle-search" value="Toyota">Toyota</option>
					<option class="vehicle-search" value="Volkswagen">Volkswagen</option>
					<option class="vehicle-search" value="Volvo">Volvo</option>
				</form:select>
			</div>

			<div class="form-group col-md-6">
				<label for="model">Model</label>
				<form:input path="model" class="form-control" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="mileage">Milage</label>
				<form:input path="mileage" class="form-control" />
			</div>
			<div class="form-group col-md-6">
				<label for="color">Color</label>
				<form:select path="make" id="color" class="form-control">
					<option class="vehicle-search" value="0">Make</option>
					<option class="vehicle-search" value="Red">Red</option>
					<option class="vehicle-search" value="Black">Black</option>
					<option class="vehicle-search" value="Blue">Blue</option>
					<option class="vehicle-search" value="White">White</option>
					<option class="vehicle-search" value="Green">Green</option>
					<option class="vehicle-search" value="Silver">Silver</option>
					<option class="vehicle-search" value="Gray">Gray</option>
					<option class="vehicle-search" value="Gold">Gold</option>
					<option class="vehicle-search" value="Orange">Orange</option>
					<option class="vehicle-search" value="Tan">Tan</option>
					<option class="vehicle-search" value="Brown">Brown</option>
					<option class="vehicle-search" value="Yellow">Yellow</option>
					<option class="vehicle-search" value="Pearl">Pearl</option>
					</form:select>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="carDescription">Description</label>
				<form:input path="carDescription" class="form-control" />
			</div>
			<div class="form-group col-md-6">
				<label for="price">Price</label>
				<form:input path="price" class="form-control" />
			</div>
			<div class="form-group col-md-6">
				<label for="purchaseDate">Purchase Date</label>
				<form:input path="purchaseDate" class="form-control" />
			</div>
		</div>

		<button type="submit" class="btn btn-primary">Add Vehicle</button>

	</form:form>




</main>

<footer class="mastfoot mt-auto">
	<div class="inner">
		<p>
			Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
			by <a href="https://jnqservices.com/">J & Q Services and Design,
				LLC</a>.
		</p>
	</div>
</footer>

</body>

</html>


