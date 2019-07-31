<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>User Summary</title></head>
<body bgcolor="white">
<form name="userSummary" action="summary">
<h1>User Summary</h1>
<div>
<p>First Name: ${user.firstName}</p>
<p>Last Name: ${user.lastName}</p>
<h1>Address:</h1>
<p>Unit: ${user.address.unit}</p>
<p>Street: ${user.address.street}</p>
<p>Suburb: ${user.address.suburb}</p>
<p>Post Code: ${user.address.postCode}</p>
<p>State: ${user.address.state}</p>
<p>Country: ${user.address.country}</p>
</div>
</form>
</body>
</html>