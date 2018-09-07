<p> Are you sure you want to remove this product? </p>

<cfset id = #URL.Id#>

<cfform action="deletemodal-put.cfm" method="post">

	<cfinput type="hidden" name="id" value="#id#">

	<cfinput type="submit" name="SubmitForm" value="Yes"> 
	<cfinput type="button" name="CloseButton" value="No" onClick="ColdFusion.Window.destroy('Window1',true)">
</cfform>