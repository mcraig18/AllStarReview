<DOCTYPE  html>

<html>
<head>
	<a href="http://localhost:8500/AllStarReview/home.cfm">Home</a>
	<a href="http://localhost:8500/AllStarReview/dashboard.cfm">Dashboard</a>
</head>

<body>
	<h1> All Star Review </h1>

	<cfform action="result-test.cfm" method="post">
		<cfinput type="text" name="SearchParam" size="30" placeholder="Search for a product...">
		<cfinput type="submit" name="SubmitForm" value="Submit"> 
	</cfform>

</body>
</html>