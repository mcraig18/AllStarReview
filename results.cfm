<cfform action="dashboard.cfm" method="post">
	<cfinput type="text" name="SearchParam" size="30" value="#FORM.SearchParam#">
	<cfinput type="submit" name="SubmitForm" value="Submit"> 
</cfform>

<cfquery name="ResultList" datasource="AllStarReview"> 
	SELECT Id, Name, ProductNumber, Description 
	FROM Product 
	WHERE Name = '#FORM.SearchParam#'
</cfquery> 
