<cfform action="home.cfm" method="post">
		<div>Product Name</div>
		<cfinput type="text" name="name" size="60">
		<div>Description</div>
		<cfinput type="text" name="description" size="60">
		<div>Product Number</div>
		<cfinput type="text" name="number" size="60">
		<div>Product Category</div>
		<cfinput type="text" name="category" size="40">
		<div>Standard Cost</div>
		<cfinput type="text" name="cost" size="60">

		<cfinput type="submit" name="SubmitForm" value=""> 
		<cfinput type="button" name="CloseButton" value="Cancel" onClick="ColdFusion.Window.hide('Window1')">
</cfform>