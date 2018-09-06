<cfquery name="ResultList" datasource="AllStarReview"> 
	SELECT p.Id as ID, p.Name as Name, p.ProductNumber as ProductNumber, p.Description as Description, CAST(AVG(CONVERT(DECIMAL,pr.Rating)) as DECIMAL(10,1)) as AverageRating, COUNT(pr.Rating) as TotalRatings
	FROM Product p
	LEFT JOIN ProductReview pr on pr.ProductId = p.Id
	WHERE p.Name = '#FORM.SearchParam#'
	GROUP BY p.Id, p.Name, p.ProductNumber, p.Description
</cfquery>