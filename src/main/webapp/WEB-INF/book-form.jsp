<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<form:form action="save" method="post" modelAttribute="book"
			enctype="multipart/form-data">

			<div class="form-group">
				<form:input path="id" type="hidden" />
			</div>

			<div class="form-group">
				<form:label path="name">Name</form:label>
				<form:input path="name" cssClass="form-control" />
				<form:errors path="name" cssStyle="color:red"></form:errors>
			</div>


			<div class="form-group">
				<form:label path="author">Author</form:label>
				<form:input path="author" cssClass="form-control" />
				<form:errors path="author" cssStyle="color:red" />
			</div>


			<div class="form-group">
				<form:label path="publishYear">PublishYear</form:label>
				<form:input path="publishYear" cssClass="form-control" />
				<form:errors path="publishYear" cssStyle="color:red" />
			</div>


			<div class="form-group">
				<form:label path="rating">Rating</form:label>
				<form:input path="rating" cssClass="form-control" />
				<form:errors path="rating" cssStyle="color:red" />
			</div>

			<p></p>
			<label for="fileUpload">Image:</label>
			<input type="file" name="fileUpload" id="fileUpload">

			<p></p>
			<button class="btn btn-success" type="submit">Save</button>
		</form:form>
	</div>

</body>
</html>