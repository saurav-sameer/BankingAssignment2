<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style type="text/css">
		thead {
			font-family: "Comic Sans Ms",Sans-serif;
		}
		div table thead th{
			font-size: 22px;
		}
		div table tbody  td{
			font-size: 18px;
		}
	</style>
<title>Statement</title>
</head>
<body class="bg-info">
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container mt-2">
		<table class="table table-sm">
		<thead class="bg-warning">
			<tr class="text-center ">
				<Th>Transection Id</Th>
				<Th>Date</Th>
				<Th>Balance</Th>
				<Th>Remark</Th>
				<Th>Credit</Th>
				<th>Debit</th>
		</tr>
		</thead>
		<tbody class="text-center text-dark  text-center">
				<c:forEach var="listValu" items="${responseMsg}">
			<tr class="bg-light">
				<td>${listValu.getTranid()}</td>
				<td>${listValu.getDate()}</td>
				<td>${listValu.getBalance()}</td>
				<td>${listValu.getRemarks()}</td>
				<td>${listValu.getCredit()}</td>
				<td>${listValu.getDebitamount()}</td>
					
			</tr>
			</c:forEach>
		</tbody>
			
	</table>
	</div>
</body>
</html> 