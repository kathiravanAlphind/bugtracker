<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>DashBoard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/welcome.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<aside class="side-nav" id="show-side-navigation1">
		<i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg"
			data-close="show-side-navigation1"></i>
		<div class="heading">
			<div class="info">
				<h3><%=request.getAttribute("username")%></h3>
				<p>Alphind Software Solution.</p>
			</div>
		</div>
		<ul class="categories">
			<li><i class="fa fa-envelope fa-fw"></i><a href="#"> Contact
					us</a>
				<ul class="side-nav-dropdown">
					<li><a href="#">COE, Development centre NSIC STP Complex,
							Module no 409, Ekkaduthangal, Guindy I.E., Chennai - 600 032,
							Tamil Nadu. Tel:+91 44 4214 8468 Email: support@alphind.com</a></li>
				</ul></li>
		</ul>
	</aside>
	<section id="contents">
		<nav class="navbar navbar-default">
			<div class="container-fluid" style="background-color: lightblue;">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<i class="fa fa-align-right"></i>
					</button>
					<a class="navbar-brand"><span class="main-color" style="color:red;">DashBoard</span></a>
				</div>
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">My profile <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="fa fa-user-o fw"></i> My
										account</a></li>
								<li><a href="#"><i class="fa fa-envelope-o fw"></i> My
										inbox</a></li>
								<li><a href="#"><i class="fa fa-question-circle-o fw"></i>
										Help</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><i class="fa fa-sign-out"></i> Log out</a></li>
							</ul></li>
						<li><a href="#"><i class="fa fa-comments"></i><span>23</span></a></li>
						<li><a href="#"><i class="fa fa-bell-o"></i><span>98</span></a></li>
						<li><a href="#"><i data-show="show-side-navigation1"
								class="fa fa-bars show-side-btn"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="welcome">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="content">
							<h2>Welcome to DashBoard</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="statistics">
			<div class="container">
				<h2>Projects</h2>
				<c:forEach items="${ProjectList }" var="project">
					<div class="list-group">
						<a href="/SupportTicketSystem/${project.id}"
							class="list-group-item">${project.pname }</a>
					</div>
				</c:forEach>
			</div>
			<section class="statistics">
				<div class="container">
					<h2>MyTickets</h2>
					<table class="table table-dark">
						<thead>
							<tr>
								<th scope="col">TicketNumber</th>
								<th scope="col">Category</th>
								<th scope="col">Description</th>
								<th scope="col">Status</th>
							</tr>
						</thead>
						<c:forEach items="${TicketList }" var="tickets">
							<tbody>
								<tr>
									<th scope="row">${tickets.number }</th>
									<th scope="row">${tickets.category }</th>
									<th scope="row">${tickets.description}</th>
									<th scope="row">${tickets.status}</th>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</section>
		</section>
	</section>
	<script src='http://code.jquery.com/jquery-latest.js'></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js"></script>
	<script type="text/javascript" src='<c:url value="/resources/js/main.js" />'></script>
</body>
</html>