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
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-2">
		<nav class="navbar navbar-light bg-light navbar-fixed-top">
			<form action="about"  method="post">
   				<button class="btn btn-lg btn-outline-success" type="submit">About</button>
   			</form>
  			<form  action="statement" method="post">
   				 <button class="btn btn-lg btn-outline-success" type="submit">statement</button>
   			</form>
   				<button class="btn btn-lg btn-outline-success" type="button" data-toggle="modal" data-target="#credit">Credit Amount</button>
   				<button class="btn btn-lg btn-outline-success" type="button" data-toggle="modal" data-target="#deposit">Deposit Amount</button>
   			<form  action="logout" method="post">
   				 <button class="btn btn-lg btn-outline-success" type="submit">Logout</button>
   			</form>	
		</nav>	
	</div>
		<div class="container mt-1">
		<form action="credit" method="post">
			<div class="modal fade " id="credit">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="text-info">Credit Amount</h4>
						<button type="button" class="close" data-dismiss="modal" 		aria-label="Close">
         				 	<span aria-hidden="true">&times;</span>
       				   </button>
					</div>
					<div class="modal-body">
						<div class="card-body">
							<div class="form-group">
								<input type="number" name="credit" placeholder="Enter Ammount" class="form-control">
							</div>
							<div class="form-group">
							<textarea name="remarks" class="form-control" placeholder="Enter Remarks" cols="6" rows="3"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
       					 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        				<button type="submit" class="btn btn-primary">submit</button>
     					 </div>
					</div>
				
				</div>
			</div>
		</form>	
	</div>
		<div class="container mt-1">
		<form action="deposit" method="post">
			<div class="modal fade " id="deposit">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="text-info">Deposit Amount</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
         				 	<span aria-hidden="true">&times;</span>
       				   </button>
					</div>
					<div class="modal-body">
						<div class="card-body">
							<div class="form-group">
								<input type="number" name="debitamount" placeholder="Enter Ammount" class="form-control">
							</div>
							<div class="form-group">
							<textarea name="remarks" class="form-control" placeholder="Enter Remarks" cols="6" rows="3"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
       					 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        				<button type="submit" class="btn btn-primary">submit</button>
     					 </div>
					</div>
				
				</div>
			</div>
		</form>	
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