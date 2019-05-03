<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Login Page</title>
<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<!--Custom styles-->
<link rel="stylesheet" href="<c:url value="/resources/css/main1.css"/>">
</head>
<body>
	<center>
		<form action="login" method="post">
			<div class="container">
				<div class="d-flex justify-content-center h-80">
					<div class="card" style="margin-top: 18%">
						<div class="card-header">
							<center>
								<img src="<c:url value="/resources/images/logo.jpg" />" width="30%">
							</center>
						</div>
						<div class="card-body">
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user"></i></span>
								</div>
								<input type="text" class="form-control" name="uname"
									placeholder="username">
							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-key"></i></span>
								</div>
								<input type="password" class="form-control" name="pass"
									placeholder="password">
							</div>
							<div class="form-group">
								<input type="submit" value="Login"
									class="btn float-right login_btn">
								<a href="register.jsp">Register</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</center>
</body>
</html>