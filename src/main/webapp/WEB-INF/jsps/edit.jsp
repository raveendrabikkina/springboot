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
<form name="editUser" action="edit" method="post">
<p class="text-right"><a href="login" class="btn btn-danger">Logout</a></p>
<div class="jumbotron text-center">
<h1>Update User</h1>
</div>
<div>
    <div class="form-group">
      <label for="firstName">First Name:</label>
      <input type="text" class="form-control" name="firstName" id="firstName" value="${user.firstName}">
    </div>
    <div class="form-group">
      <label for="lastName">Last Name:</label>
      <input type="text" class="form-control" name="lastName" id="lastName" value="${user.lastName}">
    </div>

    <div class="form-group">
      <label for="age">Age:</label>
      <input type="text" class="form-control" name="age" id="age" value="${user.age}">
    </div>
    <div class="form-group">
      <label for="mobile">Mobile:</label>
      <input type="text" class="form-control" name="mobile" id="mobile" value="${user.mobile}">
    </div>

    <div class="form-group">
      <label for="address.unit">Unit:</label>
      <input type="text" class="form-control" name="address.unit" id="address.unit" value="${user.address.unit}">
    </div>
    <div class="form-group">
      <label for="address.street">Street:</label>
      <input type="text" class="form-control" name="address.street" id="address.street" value="${user.address.street}">
    </div>

    <div class="form-group">
      <label for="address.suburb">Suburb:</label>
      <input type="text" class="form-control" name="address.suburb" id="address.suburb" value="${user.address.suburb}">
    </div>

     <div class="form-group">
       <label for="address.postCode">Post Code:</label>
       <input type="text" class="form-control" name="address.postCode" id="address.postCode" value="${user.address.postCode}">
     </div>

      <div class="form-group">
        <label for="address.state">State:</label>
        <input type="text" class="form-control" name="address.state" id="address.state" value="${user.address.state}">
      </div>

    <div class="form-group">
      <label for="address.country">Country:</label>
      <input type="text" class="form-control" name="address.country" id="address.country" value="${user.address.country}">
    </div>
    <div class="form-group">
        <input name ="userId" type="hidden" class="form-control" value="${user.userId}"/>
    </div>
    <div class="text-center">
        <input type="submit" class="btn btn-success" value="Update User"/>
    </div>
</div>
</form>
</body>
</html>