<cfform action="addeditmodal-put.cfm" method="post">
		
		<cfoutput>#URL.Page#</cfoutput>
		<cfoutput>#URL.Id#</cfoutput>

		<cfif #URL.Id# gt 0>

			<cfinclude template="addeditmodal-get.cfm">
			<cfset name = ProductList.Name[1]>
			<cfset description = ProductList.Description[1]>
			<cfset productNumber = ProductList.ProductNumber[1]>
			<cfset price = ProductList.Price[1]>

		<cfelse>

			<cfset name = "">
			<cfset description = "">
			<cfset productNumber = "">
			<cfset price = "">

		</cfif>
		
		<div>Product Name</div>
		<cfinput type="text" name="name" size="60" value="#name#">
		<div>Description</div>
		<cfinput type="text" name="description" size="60" value="#description#">
		<div>Product Number</div>
		<cfinput type="text" name="number" size="60" value="#productNumber#">
		<div>Product Category</div>
		<cfinput type="text" name="category" size="40" value="null">
		<div>Standard Cost</div>
		<cfinput type="text" name="cost" size="60" value="#price#">

		<cfinput type="submit" name="SubmitForm" value="#URL.Page#"> 
		<cfinput type="button" name="CloseButton" value="Cancel" onClick="ColdFusion.Window.destroy('Window1',true)">
</cfform>