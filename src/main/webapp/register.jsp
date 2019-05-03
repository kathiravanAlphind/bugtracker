<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User!</title>
<link rel="stylesheet" href="<c:url value="/resources/css/register.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/js/register.js"/>">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div id="contentContainer" class="container">
  <div class="row">
    <div id="realContent" class="col-xs-12">
      <div class="row">
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
          <h1>Sign Up</h1>
        </div>
      </div>
      <div class="row">
        <section class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
          <div class="well well-lg">
            <div class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="row">
                  <div class="col-xs-12">
                    <h3>Welcome</h3></div>
                </div>
                <div class="row">
                  <!-- Instructions -->
                  <div class="col-xs-12">
                    <p class="lead">Register now for <span class="text-success">FREE</span></p>
                    <ul class="list-unstyled" style="line-height: 3; font-size: 1.4em; font-weight: 500;">
                      <li><span class="fa fa-check text-success"></span> Alphind HelpDesk</li>
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
                        <span class="input-group-addon"><i class="icon-user icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="Username" maxlength="100" type="text" name="uname">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="password" class="form-control input-lg" placeholder="Password" maxlength="60" type="password" name="pass">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="FirstName" maxlength="60" type="text" name="fname">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="LastName" maxlength="60" type="text" name="lname">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="QA" maxlength="60" type="number" name="qa">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="Developer" maxlength="60" type="number" name="dev">
                      </div>
                      <div class="form-group">
                        <button type="submit" id="btn-signup" class="btn btn-block btn-primary btn-lg">Sign Up</button>
                      </div>
                    </form>
                    <div class="form-group">
                      <div class="topCushion">Already a member? <a href="/SupportTicketSystem/login.jsp">Login</a></div>
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
</body>
</html>