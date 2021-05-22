<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<p></p>
	<div class="container">
		<table class="table table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th>NAME</th>
					<th>AUTHOR</th>
					<th>PUBLISHYEAR</th>
					<th>RATING</th>
					<th>IMAGE</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${book.name }</td>
					<td>${book.author }</td>
					<td>${book.publishYear }</td>
					<td>${book.rating }</td>
					<td><img src="data:image/jpg;base64,${book.image}" style="width: 50px; height: 50px"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>