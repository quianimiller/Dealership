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
						<li class="nav-item"><a class="nav-link" href="/employee-login">Employee Login</a></li>
						<li class="nav-item"><a class="nav-link" href="/login">Customer Login</a>
						</li>
					</ul>
					<form:form class="d-flex" method="POST" action="/search" modelAttribute="keyword">
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


			<form:form method="POST" action="/sign-up-customer" modelAttribute="customer">


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputFirstName">First Name</label>
						<form:input path="firstName" type="text" class="form-control"
							id="inputFirstName" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputLastName">Last Name</label>
						<form:input path="lastName" type="text" class="form-control"
							id="inputLastName" />
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="phoneNumber">Phone Number</label>
						<form:input path="phoneNumber" class="form-control" />
					</div>

					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label>
						<form:input path="email" type="email" class="form-control"
							id="inputEmail4" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label>
						<form:input path="password" type="password" class="form-control"
							id="inputPassword4" />
					</div>
				</div>

				<div class="form-group">
					<label for="inputAddress">Street</label>
					<form:input path="address.street" type="text" class="form-control"
						id="inputAddress" placeholder="1111 Heaven's Hwy" />
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<form:input path="address.city" type="text" class="form-control"
							id="inputCity" />
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">State</label>
						<form:select path="address.state" id="inputState"
							class="form-control">
							<option selected>Choose...</option>
							<option value="" selected="selected">Select a State</option>
							<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
						</form:select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">Zip</label>
						<form:input path="address.zip" type="text" class="form-control"
							id="inputZip" />
					</div>
				</div>
			
				<button type="submit" class="btn btn-primary">Sign up</button>
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


