<cfform action="addeditmodal-put.cfm" method="post">

		<cfquery name="FullCategoryList" datasource="AllStarReview"> 
				SELECT Id as fullId, Name as fullName
				FROM Category
		</cfquery>

		<cfif #URL.Id# gt 0>

			<cfinclude template="addeditmodal-get.cfm">
			<cfset id = #URL.Id#>
			<cfset page = "editted">
			<cfset name = ProductList.Name[1]>
			<cfset description = ProductList.Description[1]>
			<cfset productNumber = ProductList.ProductNumber[1]>
			<cfset catid = CategoryList.CatId[1]>
			<cfset price = ProductList.Price[1]>

		<cfelse> 

			<cfset id = #URL.Id#>
			<cfset page = "added">
			<cfset name = "">
			<cfset description = "">
			<cfset productNumber = "">
			<cfset catid = 1>
			<cfset price = "">

		</cfif>

		<cfinput type="hidden" name="id" value="#id#">
		<cfinput type="hidden" name="page" value="#page#">
		<div>Product Name</div>
		<cfinput type="text" name="name" size="60" value="#name#">
		<div>Description</div>
		<cfinput type="text" name="description" size="60" value="#description#">
		<div>Product Number</div>
		<cfinput type="text" name="productNumber" size="60" value="#productNumber#">
		<div>Product Category</div>
		<select name="categories">
				<cfoutput query="FullCategoryList"><option value="#fullId#">#fullName#</option></cfoutput>
		</select>
		<div>Standard Cost</div>
		<cfinput type="text" name="price" size="60" value="#price#">

		<cfinput type="submit" name="SubmitForm" value="#URL.Page#"> 
		<cfinput type="button" name="CloseButton" value="Cancel" onClick="ColdFusion.Window.destroy('Window1',true)">
</cfform>