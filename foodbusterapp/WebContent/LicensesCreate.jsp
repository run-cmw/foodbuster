<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap style -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Create a License</title>
</head>
<body>
	<div class="jumbotron">
	<h1>Create License</h1>
	</div>
	<form action="licensescreate" method="post">
		<p>
			<label for="licensekey">LicenseKey</label>
			<input id="licensekey" name="licensekey" value="">
		</p>
		<p>
			<label for="licensenumber">LicenseNumber</label>
			<input id="licensenumber" name="licensenumber" value="">
		</p>
		<p>
			<label for="licenseissue">LicenseIssue (yyyy-mm-dd)</label>
			<input id="licenseissue" name="licenseissue" value="">
		</p>
		<p>
			<label for="licenseexpiration">LicenseExpiration (yyyy-mm-dd)</label>
			<input id="licenseexpiration" name="licenseexpiration" value="">
		</p>
		<p>
			<label for="licensestatus">LicenseStatus (Active/Inactive)</label>
			<input id="licensestatus" name="licensestatus" value="">
		</p>
		<p>
			<label for="licensecategoryfk">LicenseCategoryFK</label>
			<input id="licensecategoryfk" name="licensecategoryfk" value="">
		</p>
		<p>
			<input type="submit">
		</p>
	</form>
	<br/><br/>
	<div class="alert alert-info" role="alert">
		<span id="successMessage"><b>${messages.success}</b></span>
	</div>
	<div><a href="findestablishmentsbyname">Back to Find Establishments by Name</a></div>
	<div><a href="findlicensesbylicensenumber">Back to Find Licenses By Number</a></div>
	<div><a href="findlicensesbylicensecategory">Back to Find Licenses By License Category</a></div>
	<div><a href="findlicensesbylicensestatus">Back to Find Licenses By Status</a></div>
	<!-- Bootstrap scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>