<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>User Summary</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body bgcolor="white">
<div class="container">
<form name="editUser" action="edit" method="post">
<div class="jumbotron text-center input-group">
<h1>Update User</h1>
</div>
<div>
<p><input name ="firstName" type="text" class="form-control" value="${user.firstName}"/></p>
<p><input name ="lastName" type="text" class="form-control" value="${user.lastName}"/></p>
<p><input name ="age" type="text" class="form-control" value="${user.age}"/></p>
<p><input name ="mobile" type="text" class="form-control" value="${user.mobile}"/></p>
<h1>Address:</h1>
<p><input name ="address.unit" type="text" class="form-control" value="${user.address.unit}"/></p>
<p><input name ="address.street" type="text" class="form-control" value="${user.address.street}"/></p>
<p><input name ="address.suburb" type="text" class="form-control" value="${user.address.suburb}"/></p>
<p><input name ="address.postCode" type="text" class="form-control" value="${user.address.postCode}"/></p>
<p><input name ="address.state" type="text" class="form-control" value="${user.address.state}"/></p>
<p><input name ="address.country" type="text" class="form-control" value="${user.address.country}"/></p>
<p><input name ="userId" type="hidden" value="${user.userId}"/></p>
<p><input type="submit" class="btn btn-primary btn-lg" value="Update User"/></p>
</div>
</form>
</body>
</html>