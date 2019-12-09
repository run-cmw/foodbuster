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
<title>Find Violations</title>
</head>
<body>
	<form action="findviolationsbyinspectionkey" method="post">
	<div class="jumbotron">
		<h1>Search for Violations by the Inspection Key</h1>
	</div>
		<p>
			<label for="inspectionkey">Inspection Key</label>
			<input id="inspectionkey" name="inspectionkey" value="${fn:escapeXml(param.inspectionkey)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<div class="alert alert-info" role="alert">
				<span id="successMessage"><b>${messages.success}</b></span>
			</div>
		</p>
	</form>
	<br/>
	<div><a href="findestablishmentsbyname">Back Home (Find Establishments by Name)</a></div>
	<div id="InspectionHistoryCreate"><a href="inspectionhistorycreate">Create an Inspection</a></div>
	<div id="FindInspectionsByEstName"><a href="findinspectionsbyestname">Find an Inspection</a></div>
	<div id="ViolationHistoryCreate"><a href="violationhistorycreate">Create a Violation</a></div>
	<div id="FindViolationsByEstName"><a href="findviolationsbyestname">Find a Violation</a></div>
	<br/>
	<h3>Matching Violations</h3>
        <table class="table table-striped">
           <tr>
                <th>ViolationHistoryKey</th>
                <th>EstablishmentName</th>
                <th>ViolationCode</th>
                <th>ViolationLevel</th>
                <th>ViolationDescription</th>
                <th>ViolationDate</th>
                <th>ViolationStatus</th>
                <th>ViolationComments</th>
                <th>FoodEstablishmentFK</th>
                <th>InspectionKey</th>
                <th>Update Comments</th>
                <th>Delete Violation</th>
            </tr>
            <c:forEach items="${violationHistory}" var="violationHistory" >
                <tr>
                    <td><c:out value="${violationHistory.getViolationHistoryKey()}" /></td>
                    <td><c:out value="${violationHistory.getEstablishmentName()}" /></td>
                    <td><c:out value="${violationHistory.getViolationCode()}" /></td>
                    <td><c:out value="${violationHistory.getViolationLevel()}" /></td>                 
                    <td><c:out value="${violationHistory.getViolationDescription()}" /></td>                                    
                    <td><fmt:formatDate value="${violationHistory.getViolationDate()}" pattern="yyyy-MM-dd"/></td>
                    <td><c:out value="${violationHistory.getViolationStatus()}" /></td>   
                    <td><c:out value="${violationHistory.getViolationComments()}" /></td>                       
                    <td><c:out value="${violationHistory.getFoodEstablishment().getFoodEstablishmentKey()}" /></td>  
                    <td><c:out value="${violationHistory.getInspectionHistory().getInspectionHistoryKey()}" /></td>    
                    <td><a href="violationupdate?inspectionhistorykey=<c:out value="${violationHistory.getInspectionHistory().getInspectionHistoryKey()}"/>">Update</a></td>                    
					<td><a href="violationdelete?violationhistorykey=<c:out value="${violationHistory.getViolationHistoryKey()}"/>">Delete</a></td>
                </tr>
            </c:forEach>
       </table>
       <!-- Bootstrap scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
