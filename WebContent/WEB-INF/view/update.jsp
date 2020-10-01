<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Bank Home</title>
</head>
<body class="bg-info">
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container mt-1">
		<div class="card mt-1">
			<div class="row">
				<div class="col col-md-3">
					<img src="photo/back1.jpg" class="img-fluid p-1 border-warning">
				</div>
				<div class="col-md-9 ">
					<h4 class="card-title d-inline-block pl-5 ">Mr. <span class="text-danger text-capitalize display-4">${responseMsg.getFname() } </span></h4>
					<h4 class="card-title d-inline-block pl-5">A/C  <span class="text-danger text-capitalize display-4">${responseMsg.getAccNumber()}</span></h4>
					<h4 class="card-title d-inline-block pl-5">USER Id <span class="text-danger text-capitalize display-4"> ${responseMsg.getCustid()}</span></h4>
					<div class="card-body">
						<div class="form-row">
							<div class="form-group col-md-6">
     						 	<input type="text" class="form-control" placeholder="First name" name="fname" readonly class="form-control-plaintext" value=" ${responseMsg.getFname() }">
    						</div>
    						<div class="form-group col-md-6">
      							<input type="text" class="form-control"  placeholder="Last name" name="lname" readonly class="form-control-plaintext" value=" ${responseMsg. getLname()}">
    						</div>
    						<div class="form-group col-md-6">
      							<input type="text" class="form-control"  placeholder="Mobile number" name="contactNumber" readonly class="form-control-plaintext" value=" ${responseMsg.getContactNumber()}">
    						</div>
    						<div class="form-group col-md-6">
      							<input type="email" class="form-control"  placeholder="Email ID" name="email" readonly class="form-control-plaintext" value=" ${responseMsg.getEmail()}">
    						</div>
    						<div class="form-group col-md-6">
    							<input type="text" class="form-control"  placeholder="balance" name="balance" readonly class="form-control-plaintext" value="${responseMsg.getBalance()}">
    						</div>
    						<div class="form-group col-md-6">
      							<textarea rows="1" cols="5" class="form-control" placeholder="Address" readonly class="form-control-plaintext"> ${responseMsg.getAddress()}</textarea>
    						</div>
						</div>
					</div>
				</div>
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
</body>
</html>