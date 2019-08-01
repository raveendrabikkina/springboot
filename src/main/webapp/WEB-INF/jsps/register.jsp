<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Register User</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
    <style>
      .jumbotron {
        padding: 0rem 0rem 2rem;
      }
    </style>
</head>
<body bgcolor="white">
<div class="container">
<div class="jumbotron text-center">
<h1>User Registration</h1>
</div>
<form name="registerUser" action="register" method="post">
<input type="submit" class="btn btn-primary btn-lg" name="Submit" value="Register">
</form>
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</div>
</body>
</html>