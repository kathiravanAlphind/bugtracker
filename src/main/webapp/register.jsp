<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User!</title>
<link rel="stylesheet" href="<c:url value="/resources/css/register.css"/>">
<script src="<c:url value="/resources/js/register.js"/>"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
	<form action="add" method="post">
		<div id="contentContainer" class="container">
			<div class="row">
				<div id="realContent" class="col-xs-12">
					<div class="row">
						<div
							class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
							<h1>Sign Up</h1>
						</div>
					</div>
					<div class="row">
						<section
							class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
							<div class="well well-lg">
								<div class="row">
									<div class="col-sm-6 col-xs-12">
										<div class="row">
											<div class="col-xs-12">
												<h3>Welcome</h3>
											</div>
										</div>
										<div class="row">
											<!-- Instructions -->
											<div class="col-xs-12">
												<p class="lead">
													Register now for <span class="text-success">FREE</span>
												</p>
												<ul class="list-unstyled"
													style="line-height: 3; font-size: 1.4em; font-weight: 500;">
													<li><span class="fa fa-check text-success"></span>
														Participate in this contest</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- Registration Form -->
									<div class="col-sm-6 col-xs-12">
										<div class="row">
											<div class="col-xs-12">
												<form id="signupForm" method="post" accept-charset="UTF-8" validate>
													<div class="input-group">
														<span class="input-group-addon"><i
															class="icon-user icon-2x"></i></span> <input id="handle"
															class="form-control input-lg" placeholder="Username"
															maxlength="100" type="text" name="uname" required="required">
													</div>
													<div class="input-group">
														<span class="input-group-addon"><i
															class="icon-asterisk icon-2x"></i></span> <input id="password"
															class="form-control input-lg" placeholder="Password"
															maxlength="60" type="password" name="pass" required="required">
													</div>
													<div class="input-group">
														<span class="input-group-addon"><i
															class="icon-asterisk icon-2x"></i></span> <input id="handle"
															class="form-control input-lg" placeholder="FirstName"
															maxlength="60" type="text" name="fname" required="required">
													</div>
													<div class="input-group">
														<span class="input-group-addon"><i
															class="icon-asterisk icon-2x"></i></span> <input id="handle"
															class="form-control input-lg" placeholder="LastName"
															maxlength="60" type="text" name="lname" required="required">
													</div>
													<div>
														<input type="checkbox" id="scales" name="qa" checked
															style="margin: .4rem;"> <label for="scales"
															style="font: 1rem 'Fira Sans', sans-serif; font-size: 25px;">QA</label>
													</div>

													<div>
														<input type="checkbox" id="horns" name="dev"
															style="margin: .4rem;"> <label for="horns"
															style="font: 1rem 'Fira Sans', sans-serif; font-size: 25px;">Developer</label>
													</div>
													<div class="form-group">
														<button type="submit" id="btn-signup"
															class="btn btn-block btn-primary btn-lg">Sign Up</button>
													</div>
												</form>
												<div class="form-group">
													<div class="topCushion">
														Already a member? <a href="/SupportTicketSystem/login.jsp">Login</a>
													</div>
												</div>
											</div>
											<!-- /.col-xs-12 -->
										</div>
										<!-- /.row -->
									</div>
									<!-- /.col-sm-6 col-xs-12 -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.well well-lg -->
						</section>
						<!-- /.col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /#realContent -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#contentContainer -->
	</form>
</body>
</html>