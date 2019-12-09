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
<title>Create Weather</title>
</head>
<body>
	<div class="jumbotron">
	<h1>Create Weather</h1>
	</div>
	<form action="weathercreate" method="post">
		<p>
			<label for="weatherdate">WeatherDate (yyyy-mm-dd)</label>
			<input id="weatherdate" name="weatherdate" value="">
		</p>
		<p>
			<label for="temphighinf">TempHighInF</label>
			<input id="temphighinf" name="temphighinf" value="">
		</p>
		<p>
			<label for="tempaverageinf">TempAverageInF</label>
			<input id="tempaverageinf" name="tempaverageinf" value="">
		</p>
		<p>
			<label for="templowinf">TempLowInF</label>
			<input id="templowinf" name="templowinf" value="">
		</p>
		<p>
			<label for="humidityhighpercentage">HumidityHighPercentage</label>
			<input id="humidityhighpercentage" name="humidityhighpercentage" value="">
		</p>
		<p>
			<label for="humidityaveragepercentage">HumidityAveragePercentage</label>
			<input id="humidityaveragepercentage" name="humidityaveragepercentage" value="">
		</p>
		<p>
			<label for="humiditylowpercentage">HumidityLowPercentage</label>
			<input id="humiditylowpercentage" name="humiditylowpercentage" value="">
		</p>
		<p>
			<label for="windhighinmph">WindHighInMph</label>
			<input id="windhighinmph" name="windhighinmph" value="">
		</p>
		<p>
			<label for="windaverageinmph">WindAverageInMph</label>
			<input id="windaverageinmph" name="windaverageinmph" value="">
		</p>
		<p>
			<label for="windgusthighinmph">WindGustHighInMph</label>
			<input id="windgusthighinmph" name="windgusthighinmph" value="">
		</p>
		<p>
			<label for="snowfallininches">SnowFallInInches</label>
			<input id="snowfallininches" name="snowfallininches" value="">
		</p>
		<p>
			<label for="precipitationininches">PrecipitationInInches</label>
			<input id="precipitationininches" name="precipitationininches" value="">
		</p>
		<p>
			<label for="events">Events</label>
			<input id="events" name="events" value="">
		</p>
		
	</form>
	<br/><br/>
	<div class="alert alert-info" role="alert">
		<span id="successMessage"><b>${messages.success}</b><input type="submit"></span>
	</div>
	<div><a href="findestablishmentsbyname">Back Home (Find Establishments by Name)</a></div>
	<div><a href="findweatherbyweatherdate">Back to Find Weather by Date</a></div>
	<div><a href="findweatherbyweatherevents">Back to Find Weather by Weather Events</a></div>
	<!-- Bootstrap scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>