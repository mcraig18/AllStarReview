<DOCTYPE  html>
<html>

<cfinclude template="header.cfm">

<body>
	<h1> All Star Review </h1>

	<cfform action="home.cfm" method="post">
		<cfinput type="text" name="SearchParam" size="30" placeholder="Search for a product...">
		<cfinput type="submit" name="SubmitForm" value="Submit"> 
	</cfform>

	<cfif structKeyExists(form, "SearchParam")>
		<cfinclude template="searchresults-get.cfm">

		<cfif ResultList.RecordCount gt 0>
			<cftable query = "ResultList" startRow = "1" colSpacing = "3" HTMLTable border colheaders="true">
				<cfcol header = "Name" align = "Left" width = 2 text= "<a href ='http://localhost:8500/AllStarReview/details.cfm?Id=#ID#'>#Name#</a>">
				<cfcol header = "Number" align = "Left" width = 2 text= "#ProductNumber#">
				<cfcol header = "Description" align = "Left" width = 2 text= "#Description#">
				<cfcol header = "Rating" align = "Left" width = 2 text= "#AverageRating#">
			</cftable>
		<cfelse>
			No results were found.
		</cfif>
	</cfif>

</body>
</html>