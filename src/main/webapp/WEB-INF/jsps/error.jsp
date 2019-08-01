<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>User Summary</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body bgcolor="white">
<div class="container">
<div class="jumbotron text-center alert alert-danger">
<h1>${errorCode}</h1>
</div>
<div class="well well-lg">${errorMessage}</div>
</div>
</body>
</html>