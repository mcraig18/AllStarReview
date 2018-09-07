<cfoutput>#URL.Id#</cfoutput>

Are you sure you want to remove this product?

<cfform action="dashboard.cfm" method="post">
	<cfinput type="submit" name="SubmitForm" value="Yes"> 
	<cfinput type="button" name="CloseButton" value="No" onClick="ColdFusion.Window.destroy('Window1',true)">
</cfform>