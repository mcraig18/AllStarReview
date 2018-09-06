<cfquery name="ProductList" datasource="AllStarReview"> 
	SELECT Name, ProductNumber, Description, StandardCost as Price
	FROM Product 
	WHERE Id = #URL.Id#
</cfquery> 

<cfquery name="CategoryList" datasource="AllStarReview"> 
	SELECT c.Name as Name
	FROM ProductCategory pc
	JOIN Category c on c.Id = pc.CategoryId
	WHERE pc.ProductId = #URL.Id#
</cfquery> 

<cfquery name="ReviewList" datasource="AllStarReview"> 
	SELECT Name, ReviewDate, Rating, Comment
	FROM ProductReview
	WHERE ProductId = #URL.Id#
</cfquery> 

<cfquery name="AverageRating" datasource="AllStarReview"> 
	SELECT AVG(Rating) as AverageRating
	FROM ProductReview
	WHERE ProductId = #URL.Id#
</cfquery> 

