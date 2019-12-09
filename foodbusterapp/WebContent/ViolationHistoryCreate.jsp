<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap style -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Create Violation</title>
</head>
<body> 
	<div class= "jumbotron">
		<h1>Create a Violation</h1>
	</div>
		<form action="violationhistorycreate" method="post">
		<div class="form-group form-inline"">
			<label for="establishmentname">EstablishmentName</label>
			<input id="establishmentname" class="form-control mx-sm-3" name="establishmentname" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationcode">ViolationCode</label>
			<input id="violationcode" class="form-control mx-sm-3" name="violationcode" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationlevel">ViolationLevel</label>
			<input id="violationlevel" class="form-control mx-sm-3" name="violationlevel" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationdescription">ViolationDescription</label>
			<input id="violationdescription" class="form-control mx-sm-3" name="violationdescription" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationdate">ViolationDate (yyyy-mm-dd)</label>
			<input id="violationdate" class="form-control mx-sm-3" name="violationdate" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationstatus">ViolationStatus</label>
			<input id="violationstatus" class="form-control mx-sm-3" name="violationstatus" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="violationcomments">ViolationComments</label>
			<input id="violationcomments" class="form-control mx-sm-3" name="violationcomments" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="foodestablishmentFK">FoodEstablishmentFK</label>
			<input id="foodestablishmentFK" class="form-control mx-sm-3" name="foodestablishmentFK" value="">
		</div>
		<div class="form-group form-inline"">
			<label for="inspectionhistoryFK">InspectionHistoryFK</label>
			<input id="inspectionhistoryFK" class="form-control mx-sm-3" name="inspectionhistoryFK" value="">
		</div>
		
		  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
	<br/><br/>
	<p>
		<span id="successMessage"><b>${messages.success}</b></span>
	</p>
	<br/>
	<div><a href="findestablishmentsbyname">Back Home (Find Establishments by Name)</a></div>
	<div><a href="findviolationbyviolationkey">Find Violation by Violation Key</a></div>
	<div><a href="findviolationsbyfoodestablishmentkey">Find Violations by Food Establishment Key</a></div>
	<div><a href="findviolationsbyinspectionkey">Find Violations by Inspection Key</a></div>
	<div><a href="findviolationsbycode">Find Violations by Violation Code </a></div>
	<div><a href="findviolationsbyviolationlevel">Find Violations by Violation Level </a></div>
	<div><a href="findviolationbyviolationkey">Find Violations by Establishment Name</a></div>
	<div><a href="findviolationsbyviolationdate">Find Violations by Violation Date </a></div>
	<div><a href="findviolationsbyviolationstatus">Find Violations by Violation Status </a></div>
	<div><a href="violationupdate">Update Violation Comment</a></div>
	<div><a href="violationdelete">Delete Violation</a></div>
</body>
</html> 
