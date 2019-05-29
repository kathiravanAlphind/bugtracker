<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Create Ticket</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<% out.println(request.getSession().getAttribute("project"));%>
<form action="create" method="post">
  <div class="form-group">
    <label for="formGroupExampleInput">Title</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Title" name = "title">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Category</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Category" name ="category">
  </div>
  
  <div class="form-group">
    <label for="formGroupExampleInput">Description</label>
    <textarea class="form-control" id="formGroupExampleInput" placeholder="Description" name = "description"></textarea>
  </div>
  <div class="form-group">
    <button>Create</button>
  </div>
</form>
</body>
</html>