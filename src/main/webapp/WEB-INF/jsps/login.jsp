<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
    <title>User Login</title>
</head>
<body>
<div class="container">
<div class="jumbotron text-center">
<h1>Welcome to people directory</h1>
</div>
<form action="authenticate" method="post">
    <div>
        <input type="text" name="userId" value="">
    </div>
    <div>
        <input type="password" name="password" value="">
    </div>
    <div>
        <input type="submit" class="btn btn-primary btn-lg" value="Login">
    </div>
</form>
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</div>
</body>
</html>