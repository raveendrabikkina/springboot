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
<form name="userSummary" action="editUser" method="post">
  <div class="jumbotron text-center ">
    <p class="text-right"><a href="login" class="btn btn-danger">Logout</a></p>
    <h1>User Summary</h1>
</div>
<div class="text-center">
<h4>Personal Information:</h4>
<p>First Name: ${user.firstName}</p>
<p>Last Name: ${user.lastName}</p>
<p>Age: ${user.age}</p>
<p>Mobile: ${user.mobile}</p>
<h4>Address:</h4>
<p>Unit: ${user.address.unit}</p>
<p>Street: ${user.address.street}</p>
<p>Suburb: ${user.address.suburb}</p>
<p>Post Code: ${user.address.postCode}</p>
<p>State: ${user.address.state}</p>
<p>Country: ${user.address.country}</p>
<p><input name ="userId" type="hidden" value="${user.userId}"/></p>
<p><input name ="firstName" type="hidden" value="${user.firstName}"/></p>
<p><input name ="lastName" type="hidden" value="${user.lastName}"/></p>
<p><input name ="age" type="hidden" value="${user.age}"/></p>
<p><input name ="mobile" type="hidden" value="${user.mobile}"/></p>
<p><input name ="address.unit" type="hidden" value="${user.address.unit}"/></p>
<p><input name ="address.street" type="hidden" value="${user.address.street}"/></p>
<p><input name ="address.suburb" type="hidden" value="${user.address.suburb}"/></p>
<p><input name ="address.postCode" type="hidden" value="${user.address.postCode}"/></p>
<p><input name ="address.state" type="hidden" value="${user.address.state}"/></p>
<p><input name ="address.country" type="hidden" value="${user.address.country}"/></p>
<div class="text-center">
  <input type="submit" class="btn btn-success" value="Edit User">
</div>
</div>
<div>
</div>
</form>
<script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</div>
</body>
</html>