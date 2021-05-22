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
.left {
	float: left
}

.right {
	float: left;
	border-radius: 10px;
	padding: 10px;
	text-align: center;
}

.clear {
	content: "";
	clear: both;
	display: table;
}

.header {
	height: 50px;
	background-color: orange;
}

img {
	margin-right: 20px;
	border-radius: 10px;
}

.floatLeft {
	float: left;
}
</style>
</head>
<body>
	<div class="header">
		<h4>BOOK STORE</h4>
	</div>
	<p></p>
	<div class="container">
		<div class="left col-10">
			<c:forEach var="b" items="${books}" varStatus="i">
				<div class="row">
					<div class="col-9">
						<img src="data:image/jpg;base64,${b.image}" style="height: 200px"
							class="col-3 floatLeft">

						<div class="floatLeft col-6">
							<div>
								<b>${b.name }</b>
							</div>
							<div>
								<b>by ${b.author }</b>
							</div>
							<div>
								<b>${b.publishYear }</b>
							</div>
							<div>
								<b>${b.rating }/10</b>
							</div>
						</div>
					</div>

					<div class="col-3">
						<div>
							<a href="update?id=${b.id }" class="btn btn-success">Update</a>
						</div>
						<p></p>
						<div>
							<a href="delete?id=${b.id }" class="btn btn-danger">Delete&nbsp</a>
						</div>
					</div>
					<p></p>
				</div>
			</c:forEach>
		</div>
		<div class="right col-2">
			<div>
				<a href="add"><h4>Add new Book</h4></a>
			</div>
			<div>
				<a href="#"><h4>Manager Book</h4></a>
			</div>
		</div>
		<div class="clear"></div>
		<hr>
	</div>

</body>
</html>