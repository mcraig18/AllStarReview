<DOCTYPE  html>

<html>
<head>
	<a href="http://localhost:8500/AllStarReview/home.cfm">Home</a>
	<a href="http://localhost:8500/AllStarReview/dashboard.cfm">Dashboard</a>
</head>

<body>

	<cfform action="dashboard.cfm" method="post">
		<cfinput type="text" name="SearchParam" size="30" value="#FORM.SearchParam#">
		<cfinput type="submit" name="SubmitForm" value="Submit"> 
	</cfform>

	<cfquery name="ResultList" datasource="AllStarReview"> 
		SELECT Id, Name, ProductNumber, Description 
		FROM Product 
		WHERE Name = '#FORM.SearchParam#'
	</cfquery> 

	<cftable query = "ResultList" startRow = "1" colSpacing = "3" HTMLTable border colheaders="true">
		<cfcol header = "Name" align = "Left" width = 2 text= "<a href ='http://localhost:8500/AllStarReview/details.cfm?Id=#Id#'>#Name#</a>">
		<cfcol header = "Number" align = "Left" width = 2 text= "#ProductNumber#">
		<cfcol header = "Description" align = "Left" width = 2 text= "#Description#">
	</cftable>

</body>
</html>