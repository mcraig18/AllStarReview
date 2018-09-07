<cfquery name="ProductList" datasource="AllStarReview"> 
	SELECT Name, ProductNumber, Description, StandardCost as Price
	FROM Product 
	WHERE Id = #URL.Id#
</cfquery> 

<cfquery name="CategoryList" datasource="AllStarReview"> 
	SELECT c.Id as CatId, c.Name as CatName
	FROM ProductCategory pc
	JOIN Category c on c.Id = pc.CategoryId
	WHERE pc.ProductId = #URL.Id#
</cfquery> 
