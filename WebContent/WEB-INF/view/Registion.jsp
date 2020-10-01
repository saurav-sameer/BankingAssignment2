<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="https://mdbootstrap.com/md-bootstrap-cdn/">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>registion</title>
<style type="text/css">
		body{
			background-image: url("./view/photo/back1.jpg");
		}
		.icon .fa{
			font-size: 40px;
			
		}
</style>
<title>Insert title here</title>
</head>

<body>
  <div class="container m-5">
		<div class="row">
			<div class="col-lg-5 m-auto">
				<div class="card bg-light">
					<div class="card-header text-white text-center bg-info ">
						<h5 class="icon">Login Here <span class="  fa fa-registered text-dark "></span></h5>
					</div>
					<form action="registion" method="post">
						<div class="card-body">
							<div class="input-group ">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-user" ></span>
 								</div>
  									<input type="text" class="form-control " placeholder="First Name" name="fname">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-user"></span>
 								</div>
  									<input type="text" class="form-control" placeholder="Last Name" name="lname">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-birthday-cake"></span>
 								</div>
  									<input type="number" class="form-control" placeholder="age" name="age">
							</div>
							<div class="input-group mt-3">
  								<div class="input-group-prepend text-center icon">
   									 <span class="input-group-text fa fa-address-book-o mt-2"></span>
 								</div>
  									<textarea rows="3" cols="15" name="address" class="form-control" placeholder="address"></textarea> 
							</div>
							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-font-awesome"></span>
 								</div>
  									<input type="text" class="form-control" placeholder="country" name="country">
							</div>
							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-envelope"></span>
 								</div>
  									<input type="email" class="form-control" placeholder="email" name="email">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-genderless"></span>
 								</div>
 									<div class="form-check form-check-inline ml-5">
  										<input class="form-check-input" type="radio" name="sex" value="Male">
  										<label class="form-check-label" for="inlineRadio1">Male <span class="input-group-text fa fa-male bg-transparent border-0"></span></label>
									</div>
									<div class="form-check form-check-inline ml-5">
  										<input class="form-check-input" type="radio" name="sex"  value="Female">
  										<label class="form-check-label" for="inlineRadio1">Female<span class="input-group-text fa fa-female bg-transparent border-0"></span></label>
									</div>
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-phone-square"></span>
 								</div>
  									<input type="text" class="form-control" placeholder="contact number" name="contactNumber">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-inr"></span>
 								</div>
  									<input type="text" class="form-control" placeholder="balance" name="balance">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-square"></span>
 								</div>
  									<input type="text" class="form-control" placeholder="acc type" name="accType">
							</div>

							<div class="input-group mt-3">
  								<div class="input-group-prepend">
   									 <span class="input-group-text fa fa-key"></span>
 								</div>
  									<input type="password" class="form-control" placeholder="password " name="password">
							</div>


							<div style="margin-left: 150px" class="input-group mt-3 ">
								<button class="btn btn-sm text-center btn btn-success text-white " type="submit">submit</button>
							</div>

					    </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>