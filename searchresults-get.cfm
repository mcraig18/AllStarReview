<cfquery name="ResultList" datasource="AllStarReview"> 
	SELECT Id, Name, ProductNumber, Description 
	FROM Product 
	WHERE Name = '#FORM.SearchParam#'
</cfquery>