<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
</head>
<body>
<h1>Welcome to people directory</h1>
<form action="authenticate" method="post">
    <div>
        <input type="text" name="userId" value="">
    </div>
    <div>
        <input type="password" name="password" value="">
    </div>
    <div>
        <input type="submit" value="Login">
    </div>
</form>
</body>
</html>