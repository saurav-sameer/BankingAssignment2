<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://mdbootstrap.com/md-bootstrap-cdn/">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>Home</title>
<style type="text/css">
body {
	background-image: url("./view/photo/back1.jpg");
}

.icon .fa {
	font-size: 40px;
}

.icon .fa {
	font-size: 140px;
	border-radius: 50px;
	box-shadow: 0 0 10px black;
	margin-top: -65px;
	background-color: rgb(51, 181, 229)
}

h1 {
	font-family: "Comic Sans Ms", Sans-serif;
}
</style>
</head>
<body>
	<div style="margin-top: 150px"></div>
	<div class="container m-5">
		<div class="row">
			<div class="col-lg-5 m-auto">
				<div class="card bg-light">
					<h3>${responseMsg}</h3>
					<div class="card-header text-white text-center bg-info icon ">
						<span class=" fa fa-user-circle "></span>
						<h1 class="icon">Login Here</h1>
					</div>
					<form action="login" method="post">
						<div class="card-body">
							<div class="input-group ">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-user"></span>
								</div>
								<input type="text" class="form-control " placeholder="Username"
									name="custid">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-key"></span>
								</div>
								<input type="password" class="form-control"
									placeholder="password" name="password">
							</div>

							<div class="input-group mt-3 " style="margin-left: 75px">
								<button
									class="btn btn-sm text-center btn btn-primary text-white "
									type="submit">Login</button>
					</form>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#exampleModal">Registration</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- Modal -->
	<div class="modal fade  bd-example-modal-lg" id="exampleModal"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg  ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="card bg-light">
					<div class="card-header text-white text-center bg-info ">
						<h5 class="icon">
							Registration Here </span>
						</h5>
					</div>
					<form action="registion" method="post">
						<div class="card-body">
							<div class="input-group ">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-user"></span>
								</div>
								<input type="text" class="form-control "
									placeholder="First Name" name="fname">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-user"></span>
								</div>
								<input type="text" class="form-control" placeholder="Last Name"
									name="lname">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-birthday-cake"></span>
								</div>
								<input type="number" class="form-control" placeholder="age"
									name="age">
							</div>
							<div class="input-group mt-3">
								<div class="input-group-prepend text-center">
									<span class="input-group-text fa fa-address-book-o mt-2"></span>
								</div>
								<textarea rows="3" cols="10" name="address" class="form-control"
									placeholder="address"></textarea>
							</div>
							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-font-awesome"></span>
								</div>
								<input type="text" class="form-control" placeholder="country"
									name="country">
							</div>
							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-envelope"></span>
								</div>
								<input type="email" class="form-control" placeholder="email"
									name="email">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-genderless"></span>
								</div>
								<div class="form-check form-check-inline ml-5">
									<input class="form-check-input" type="radio" name="sex"
										value="Male"> <label class="form-check-label"
										for="inlineRadio1">Male <span
										class="input-group-text fa fa-male bg-transparent border-0"></span></label>
								</div>
								<div class="form-check form-check-inline ml-5">
									<input class="form-check-input" type="radio" name="sex"
										value="Female"> <label class="form-check-label"
										for="inlineRadio1">Female<span
										class="input-group-text fa fa-female bg-transparent border-0"></span></label>
								</div>
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-phone-square"></span>
								</div>
								<input type="text" class="form-control"
									placeholder="contact number" name="password">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-inr"></span>
								</div>
								<input type="text" class="form-control" placeholder="balance"
									name="contactNumber">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-square"></span>
								</div>
								<input type="text" class="form-control" placeholder="acc type"
									name="accType">
							</div>

							<div class="input-group mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text fa fa-key"></span>
								</div>
								<input type="password" class="form-control"
									placeholder="password " name="password">
							</div>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">submit</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</html>