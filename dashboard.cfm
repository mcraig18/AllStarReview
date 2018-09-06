<DOCTYPE  html>
<html>

<cfinclude template="header.cfm">

<body>
	<cfinclude template="dashboard-get.cfm">

	<cfajaximport tags="cfwindow, cfform"> 

	<br>
	<cfform name="test"> 
	<cfinput type="button" name="AddButton" value="Add Product" onClick="ColdFusion.Window.create('Window1', 'Add Product', 'addeditmodal.cfm?Page=Add&Id=0', {height:600,width:600,modal:true,closable:false,draggable:false,resizable:true,center:true,initshow:true,minheight:500,minwidth:500 })"> 
	</cfform>
	<br>

	<cfform action="dashboard.cfm" method="post">
		<cfinput type="text" name="SearchParam" size="30" placeholder="Search for a product...">
		<cfinput type="submit" name="SubmitForm" value="Submit"> 
	</cfform>

	<cfif structKeyExists(form, "SearchParam")>
		<cfinclude template="dashboardresults-get.cfm">

		<cfif ResultList.RecordCount gt 0>
			<cfinclude template="dashboardtable.cfm">
		<cfelse>
			No results were found.
		</cfif>

	<cfelse>
		<cfinclude template="dashboardtable.cfm">
	</cfif>

		
</body>
</html>