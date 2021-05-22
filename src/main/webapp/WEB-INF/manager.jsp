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
<c:url var="detail" value="/book"></c:url>
<style type="text/css">
.floatLeft {
	float: left;
}

img {
	border-radius: 10px;
}

.item {
	margin-right: 15px;
	margin-left: 15px;
	margin-bottom: 10px;
}

.header {
	height: 50px;
	background-color: #c4c4c4;
}
</style>
</head>
<body>
	<div class="header">
		<h4>BOOK STORE</h4>
	</div>
	<p></p>
	<div class="container">
		<div class="col-lg-10 col-md-10 col-sm-12 col-12 floatLeft">
			<c:forEach var="b" items="${books }">
				<div class="col-lg-3 col-md-4 col-sm-5 col-8 floatLeft item">
					<img alt="a" src="data:image/jpg;base64,${b.image }"
						style="width: 100%; height: 300px">
					<div>
						<strong>${b.name }</strong>
					</div>
					<div>
						<strong>${b.author }</strong>
					</div>
					<div>
						<strong>${b.publishYear }</strong>
					</div>
					<div>
						<strong>${b.rating }</strong>
					</div>
					<a href="delete?id=${b.id }"
						onclick="return confirm('Ban co muon xoa khong')"
						class="btn btn-danger">Delete</a>
				</div>
			</c:forEach>
		</div>
		<div class="col-lg-2 col-md-2 floatLeft">
			<h5>Link</h5>
			<h5>
				<a href="add">Add</a>
			</h5>
			<h5>
				<a href="#">Manager</a>
			</h5>
			<h5>
				<a href="list">List Book</a>
			</h5>
			<h5>@Copyright</h5>
		</div>
	</div>

</body>
</html>