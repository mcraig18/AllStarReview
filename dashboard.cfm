<DOCTYPE  html>
<html>

<cfinclude template="header.cfm">

<body>
	<cfinclude template="dashboard-get.cfm">

	<cfajaximport tags="cfwindow, cfform"> 

	<br>
	<cfform name="test"> 
	<cfinput type="button" name="AddButton" value="Add Product" onClick="ColdFusion.Window.create('Window1', 'Add Product', 'addeditmodal.cfm', {height:600,width:600,modal:true,closable:true,draggable:false,resizable:true,center:true,initshow:true,minheight:500,minwidth:500 })"> 
	</cfform>
	<br>

	<cfform action="dashboard.cfm" method="post">
		<cfinput type="text" name="SearchParam" size="30" placeholder="Search for a product...">
		<cfinput type="submit" name="SubmitForm" value="Submit"> 
	</cfform>

	<cfif structKeyExists(form, "SearchParam")>
		<cfinclude template="dashboardresults-get.cfm">

		<cfif ResultList.RecordCount gt 0>
			<cftable query = "ResultList" startRow = "1" colSpacing = "3" HTMLTable border colheaders="true">
				<cfcol header = "Name" align = "Left" width = 2 text= "<a href ='http://localhost:8500/AllStarReview/details.cfm?Id=#Id#'>#Name#</a>">
				<cfcol header = "Number" align = "Left" width = 2 text= "#ProductNumber#">
				<cfcol header = "Description" align = "Left" width = 2 text= "#Description#">
				<cfcol header = "Rating" align = "Left" width = 2 text= "#AverageRating#">
				<cfcol header = "## Reviews" align = "Left" width = 2 text= "#TotalRatings#">
			</cftable>
		<cfelse>
			No results were found.
		</cfif>

	<cfelse>
		<cftable query = "ResultList" startRow = "1" colSpacing = "3" HTMLTable border colheaders="true">
			<cfcol header = "Name" align = "Left" width = 2 text= "<a href ='http://localhost:8500/AllStarReview/details.cfm?Id=#Id#'>#Name#</a>">
			<cfcol header = "Number" align = "Left" width = 2 text= "#ProductNumber#">
			<cfcol header = "Description" align = "Left" width = 2 text= "#Description#">
			<cfcol header = "Rating" align = "Left" width = 2 text= "#AverageRating#">
			<cfcol header = "## Reviews" align = "Left" width = 2 text= "#TotalRatings#">
		</cftable>
	</cfif>

		
</body>
</html>