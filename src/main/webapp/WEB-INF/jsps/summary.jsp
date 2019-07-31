<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>User Summary</title></head>
<body bgcolor="white">
<form name="userSummary" action="editUser" method="post">
<h1>User Summary</h1>
<div>
<p>First Name: ${user.firstName}</p>
<p>Last Name: ${user.lastName}</p>
<p>Mobile: ${user.mobile}</p>
<h1>Address:</h1>
<p>Unit: ${user.address.unit}</p>
<p>Street: ${user.address.street}</p>
<p>Suburb: ${user.address.suburb}</p>
<p>Post Code: ${user.address.postCode}</p>
<p>State: ${user.address.state}</p>
<p>Country: ${user.address.country}</p>
<p><input name ="userId" type="hidden" value="${user.userId}"/></p>
<p><input name ="firstName" type="hidden" value="${user.firstName}"/></p>
<p><input name ="lastName" type="hidden" value="${user.lastName}"/></p>
<p><input name ="address.mobile" type="hidden" value="${user.mobile}"/></p>
<p><input name ="address.unit" type="hidden" value="${user.address.unit}"/></p>
<p><input name ="address.street" type="hidden" value="${user.address.street}"/></p>
<p><input name ="address.suburb" type="hidden" value="${user.address.suburb}"/></p>
<p><input name ="address.postCode" type="hidden" value="${user.address.postCode}"/></p>
<p><input name ="address.state" type="hidden" value="${user.address.state}"/></p>
<p><input name ="address.country" type="hidden" value="${user.address.country}"/></p>
</div>
<div><input type="submit" value="Edit User"></div>
</form>
</body>
</html>