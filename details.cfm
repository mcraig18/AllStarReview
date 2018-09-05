<DOCTYPE  html>

<html>
<head>
	<a href="http://localhost:8500/AllStarReview/home.cfm">Home</a>
	<a href="http://localhost:8500/AllStarReview/dashboard.cfm">Dashboard</a>
</head>

<body>
	<cfquery name="ResultList" datasource="AllStarReview"> 
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

	
	<h1><cfoutput query="ResultList">#Name#</cfoutput></h1>

	<h3>Description</h3>
	<cfoutput query="ResultList">#Description#</cfoutput>

	<h3>Product Number</h3>
	<cfoutput query="ResultList">#ProductNumber#</cfoutput>

	<h3>Product Category</h3>
	<cfoutput query="CategoryList">#Name#</cfoutput>

	<h3>Price</h3>
	<cfoutput query="ResultList">#Price#</cfoutput>

	<h2>Product Reviews</h2>		
	<cfloop query = ReviewList>
		<cfoutput>#Name#</cfoutput>
		<cfoutput>#ReviewDate#</cfoutput>
		<cfoutput>#Rating#</cfoutput>
		<cfoutput>#Comment#</cfoutput>
		<br>
	</cfloop>


</body>
</html>