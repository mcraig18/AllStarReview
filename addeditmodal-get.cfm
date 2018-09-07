<cfquery name="ProductList" datasource="AllStarReview"> 
	SELECT Name, ProductNumber, Description, StandardCost as Price
	FROM Product 
	WHERE Id = #URL.Id#
</cfquery> 