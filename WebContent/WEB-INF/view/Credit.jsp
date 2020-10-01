<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="credit" method="post">
		<table>
			<tr>
				<th>Hi Mr. ${responseMsg}</th>
			</tr>
			<tr>
				<th><label>Enter Amount</label></th>
				<td><input type="number" name="credit" ></td>
			</tr>
			<tr>
				<th><label>Remark</label></th>
				<td><textarea rows="4" cols="16" name="remarks"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Enter"></td>
			</tr>		
		</table>
	</form>
</body>
</html>