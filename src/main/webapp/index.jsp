<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%-- <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"> --%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Alphind</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('a[href^="#"]').on('click', function(evt) {
			evt.preventDefault();

			var link = $(this).attr('href');
			var less = (!$('#nav').hasClass('active')) ? 50 : 0;

			$('html, body').animate({
				scrollTop : $(link).offset().top - less
			}, 750);
		});

		$(window).on('scroll', function() {
			if ($(this).scrollTop() > 100) {
				$('#nav').addClass('active');
			} else {
				$('#nav').removeClass('active');
			}
		});
	});
</script>
</head>
<body style="background-color:#232f3e;">
	<nav class="navbar navbar-expand-sm bg-light">
		<ul class="navbar-nav">
			<li><a href="login.jsp" style="margin-left: 1382px;" class="navbar-brand">LogIn</a></li>
		</ul>
	</nav>
</body>
</html>