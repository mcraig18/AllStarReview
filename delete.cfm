<cfoutput>#URL.Id#</cfoutput>

Are you sure?

<cfform action="home.cfm" method="post">
	<cfinput type="submit" name="SubmitForm" value="Yes"> 
	<cfinput type="button" name="CloseButton" value="No" onClick="ColdFusion.Window.destroy('Window1',true)">
</cfform>