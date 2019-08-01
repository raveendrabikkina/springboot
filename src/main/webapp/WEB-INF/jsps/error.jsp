<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>User Summary</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
    <style>
      .jumbotron {
        padding: 0rem 0rem 2rem;
      }
    </style>
</head>
<body bgcolor="white">
<div class="container">
<p class="text-right"><a href="login" class="btn btn-danger">Logout</a></p>
<div class="jumbotron text-center alert alert-danger">
<h1>${errorCode}</h1>
</div>
<div class="well well-lg">${errorMessage}</div>
</div>
</body>
</html>