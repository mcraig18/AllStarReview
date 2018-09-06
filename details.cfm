<DOCTYPE  html>
<html>

<cfinclude template="header.cfm">

<body>
	<cfinclude template="details-get.cfm">

	<h1><cfoutput query="ProductList">#Name#</cfoutput></h1>

	<h3>Description</h3>
	<cfoutput query="ProductList">#Description#</cfoutput>
	<h3>Product Number</h3>
	<cfoutput query="ProductList">#ProductNumber#</cfoutput>
	<h3>Product Category</h3>
	<cfoutput query="CategoryList">#Name#</cfoutput>
	<h3>Price</h3>
	<cfoutput query="ProductList">#Price#</cfoutput>

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